import bnlearn as bn
import sys
from pathlib import Path

data_path = Path(__file__).parent / "data"

model = bn.import_DAG(f"{data_path}/{sys.argv[1]}", verbose=0)

for node in model["model"].nodes():
    query = bn.inference.fit(model, variables=[node], evidence={}, verbose=0)
