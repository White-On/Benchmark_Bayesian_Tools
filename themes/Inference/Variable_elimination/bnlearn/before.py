import bnlearn as bn
import sys
from pathlib import Path

data_path = Path(__file__).parent / "data"

model = bn.import_DAG(f"{data_path}/{sys.argv[1]}", verbose=0)
