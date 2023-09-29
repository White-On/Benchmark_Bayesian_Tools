import bnlearn as bn
import sys
from pathlib import Path

data_path = Path(__file__).parents[1] / "data" / f'{sys.argv[1]}'

model = bn.import_DAG(data_path.__str__(), verbose=0)
