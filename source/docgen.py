from __future__ import annotations
import os
import json


class XMLNode:
    def __init__(self, name: str, attrs: None | list[tuple[str, str]] = None) -> None:
        self._children = []
        self._name = name
        self._attrs = attrs or []

    def add_attrs(self, attrs: list[tuple[str, str]]) -> None:
        self._attrs.extend(attrs)

    def add_child(self, child: XMLNode | str) -> None:
        self._children.append(child)

    def set_node_name(self, name: str):
        self._name = name

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
        for child in self._children:
            if hasattr(child, "compile"):
                children.append(child.compile(level=level+1))
            else:
                children.append(("\t" * (level + 1)) + child)
        out += "\n".join(children)
        out += f"\n{tabs}</{self.get_node_name()}>"
        return out


class ObjectDoc:

    @classmethod
    def from_json(self, file: str, author: str, package_name: str, base_tags: list[str] = []):
        obj_name = os.path.basename(os.path.splitext(file)[0])
        with open(file, "r") as f:
            data = json.load(f)
        header = '''<?xml version='1.0' encoding='utf-8' standalone='yes'?>
<?xml-stylesheet href="./c74ref.xsl" type="text/xsl"?>\n
'''
        root = XMLNode(name="c74object", attrs=[
            ("name", obj_name),
            ("module", data["module"]),
            ("category", ", ".join(
                list(set(data['categories'] + [*base_tags, package_name])))),
        ])

        # Add object digest
        digest = XMLNode(name='digest')
        digest.add_child(data["digest"])
        root.add_child(digest)

        # Add object description
        descr = XMLNode(name="description")
        descr.add_child(data['description'])
        root.add_child(descr)

        # Add metadata
        metadata_list = XMLNode(name="metadatalist")
        tags = list(set([*base_tags, package_name]))
        author_node = XMLNode(name='metadata', attrs=[('name', 'author')])
        author_node.add_child(author)
        metadata_list.add_child(author_node)

        for tag in tags:
            tag_node = XMLNode(name="metadata", attrs=[('name', 'tag')])
            tag_node.add_child(tag)
            metadata_list.add_child(tag_node)

        root.add_child(metadata_list)

        # Add inlets/outlets
        for connection_type in ['inlet', 'outlet']:
            connectionlist_node = XMLNode(name=f'{connection_type}list')
            for i, connection in enumerate(data[f'{connection_type}s']):
                connection_node = XMLNode(name=connection_type, attrs=[
                    ('id', str(i)),
                    ('type', connection['type'])
                ])
                connection_digest = XMLNode(name='digest')
                connection_digest.add_child(connection['digest'])
                connection_node.add_child(connection_digest)
                connectionlist_node.add_child(connection_node)
            root.add_child(connectionlist_node)

        content = header + root.compile()
        return content


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

    def compile(self, output_dir: str) -> None:
        for file in self.files:
            if file == f"{self.package_name}.json":
                continue
            file_path = os.path.join(self.base_dir, file)

            docstr = ObjectDoc.from_json(
                file=file_path, author=self.author, package_name=self.package_name, base_tags=self.tags)

            output_file = os.path.splitext(file)[0] + ".maxref.xml"
            with open(os.path.join(output_dir, output_file), 'w') as f:
                f.write(docstr)
