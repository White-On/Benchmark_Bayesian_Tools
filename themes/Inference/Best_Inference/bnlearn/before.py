from pathlib import Path
import bnlearn as bn
import sys

data_path = Path(__file__).parent / "data"

model = bn.import_DAG(f"{data_path}/{sys.argv[1]}", verbose=0)
