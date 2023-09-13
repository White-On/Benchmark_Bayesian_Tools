from pgmpy.readwrite import BIFReader
import sys
from pathlib import Path

data_path = Path(__file__).parents[1] / "data" / f'{sys.argv[1]}'

reader = BIFReader(data_path.__str__())
