from pathlib import Path
import os
import json

this_dir = Path(__file__).parent
with open(os.path.join(this_dir.parent, "media/bell/version.bell"), "r") as f:
    version = f.read()[2:-1]


file_types = ['patchers', 'media', 'docs', 'media/bell', 'fonts', 'other']
file_list = {}
for file_type in file_types:
    file_list[file_type] = []
    type_folder = os.path.join(this_dir.parent, file_type)
    for file in os.listdir(type_folder):
        if (file_type == 'patchers' and not file.startswith("jinx")) or file.startswith("."):
            continue
        file_list[file_type].append(file)
    file_list[file_type].sort()

info = {
    "name": "jinx",
    "displayname": "",
    "version": version,
    "author": "Felipe Tovar-Henao",
    "authors": [],
    "description": "just intonation and xenharmonic tools for Max",
    "tags": ["tuning theory", "microtonality", "just intonation", "ratios"],
    "website": "https://github.com/felipetovarhenao/jinx",
    "extends": "",
    "extensible": 0,
    "max_version_min": "8.6",
    "max_version_max": "none",
    "os": 	{
        "macintosh": 		{
            "min_version": "none",
            "platform": ["ia32", "x64"]
        },
        "windows": 		{
            "min_version": "none",
            "platform": ["ia32", "x64"]
        }
    },
    "homepatcher": "",
    "filelist": 	{
        "patchers": [],
        "help": [],
        "jsui": [],
        "media": [],
        "docs": [],
        "javascript": [],
        "code": [],
        "extras": [],
        **file_list
    },
    "c74install": 1,
    "installdate": 3704577657
}

with open(os.path.join(this_dir.parent, 'package-info.json'), 'w') as f:
    json.dump(info, f, indent=4)

with open(os.path.join(this_dir.parent, 'init/jinx-objectlist.txt'), 'w') as f:
    strlist = ""
    for file in file_list['patchers']:
        file = os.path.splitext(file)[0]
        strlist += f"max oblist \"jinx abstractions\" {file};\n"
    f.write(strlist)
