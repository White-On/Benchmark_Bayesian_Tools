import bnlearn as bn
import sys
from pathlib import Path

data_path = Path(__file__).parents[1] / "data" / f'{sys.argv[1]}'

model = bn.import_DAG(data_path.__str__(), verbose=0)

for node in model["model"].nodes():
    query = bn.inference.fit(model, variables=[node], evidence={}, verbose=0)

