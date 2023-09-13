from pgmpy.readwrite import UAIReader
import sys
from pathlib import Path

data_path = Path(__file__).parents[1] / "data" / f'{sys.argv[1]}'

reader = UAIReader(data_path.__str__())
