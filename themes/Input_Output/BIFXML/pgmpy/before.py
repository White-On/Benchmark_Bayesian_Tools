from pgmpy.readwrite import XMLBIFReader
import sys
from pathlib import Path

data_path = Path(__file__).parents[1] / "data" / f'{sys.argv[1]}'
