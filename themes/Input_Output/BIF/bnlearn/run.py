import bnlearn as bnlearn
import sys
from pathlib import Path

data_path = Path(__file__).parents[1] / "data" / f'{sys.argv[1]}'

bn = bnlearn.import_DAG(data_path.__str__())
