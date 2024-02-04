import docgen
from pathlib import Path
import os

this_path = Path(__file__).parent
doc = docgen.DocGen(os.path.abspath(this_path))
doc.compile(os.path.join(this_path.parent, 'docs'))