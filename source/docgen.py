from __future__ import annotations
import os
import json


class XMLNode:
    def __init__(self,
                 name: str,
                 attrs: None | list[tuple[str, str]] = None,
                 children: list[XMLNode] | None = None) -> None:
        self._children = children or []
        self._name = name
        self._attrs = attrs or []

    def add_child(self, child: XMLNode | str) -> None:
        self._children.append(child)

    def get_node_name(self) -> str:
        return self._name

    def get_header(self) -> str:
        attrs = " "
        attrs += " ".join([f"{attr[0]}=\"{attr[1]}\"" for attr in self._attrs])
        return f"<{self.get_node_name()}{attrs}>"

    def compile(self, level: int = 0) -> None:
        tabs = "\t" * level
        out = tabs
        out += self.get_header()
        out += "\n"

        children = []
        # print("HELLO", self._children)
        for child in self._children:
            if hasattr(child, "compile"):
                children.append(child.compile(level=level+1))
            elif type(child) == str:
                children.append(("\t" * (level + 1)) + child)
            else:
                raise RuntimeWarning(
                    f"Non-serializable object was found: {child}")
        out += "\n".join(children)
        out += f"\n{tabs}</{self.get_node_name()}>"
        return out


class DocGen:
    def __init__(self, folder: str) -> None:
        self.base_dir = os.path.abspath(folder)
        self.files = [file for file in os.listdir(
            folder) if os.path.splitext(file)[1] == ".json"]
        self.package_name = self.files[0].split(".")[0]
        self.author = None
        self.tags = None
        self.parse_entrypoint()

    def parse_entrypoint(self):
        with open(os.path.join(self.base_dir, f"{self.package_name}.json"), 'r') as f:
            package_info = json.load(f)
        self.author = package_info['author']
        self.tags = package_info['tags']
        return

    def doc_from_json(self, file: str):
        obj_name = os.path.basename(os.path.splitext(file)[0])
        with open(file, "r") as f:
            data = json.load(f)
        header = '''<?xml version='1.0' encoding='utf-8' standalone='yes'?>
<?xml-stylesheet href="./c74ref.xsl" type="text/xsl"?>\n
'''
        root = XMLNode(name="c74object", attrs=[
            ("name", obj_name),
            ("module", data["module"]),
            ("kind", data["kind"]),
            ("category", ", ".join(
                list(set(data['categories'] + [*self.tags, self.package_name])))),
        ])

        # Add object digest
        root.add_child(XMLNode(name='digest',
                               children=[data["digest"]]))

        # Add object description
        root.add_child(XMLNode(name="description",
                               children=[data['description']]))

        # Add author and tags to metadata list
        metadata_list = XMLNode(name="metadatalist")
        tags = list(set([*self.tags, self.package_name]))
        metadata_list.add_child(XMLNode(name='metadata',
                                        attrs=[('name', 'author')],
                                        children=[self.author]))

        for tag in tags:
            metadata_list.add_child(XMLNode(name="metadata",
                                            attrs=[('name', 'tag')],
                                            children=[tag]))

        root.add_child(metadata_list)

        # Add inlets/outlets
        for connection_type in ['inlet', 'outlet']:
            connectionlist_node = XMLNode(name=f'{connection_type}list')
            for i, connection in enumerate(data[f'{connection_type}s']):
                connection_node_digest = XMLNode(name='digest',
                                                 children=[connection['digest']])
                connection_node = XMLNode(name=connection_type,
                                          attrs=[
                                              ('id', str(i)),
                                              ('type', connection['type']),
                                          ],
                                          children=[connection_node_digest])
                connectionlist_node.add_child(connection_node)
            root.add_child(connectionlist_node)

        content = header + root.compile()
        return content

    def compile(self, output_dir: str) -> None:
        for file in self.files:
            if file == f"{self.package_name}.json":
                continue
            file_path = os.path.join(self.base_dir, file)

            docstr = self.doc_from_json(file=file_path)

            output_file = os.path.splitext(file)[0] + ".maxref.xml"
            with open(os.path.join(output_dir, output_file), 'w') as f:
                f.write(docstr)
