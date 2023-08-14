import os
import bnlearn as bn
import sys

# doest not work because the memory is not freed
currentdir = os.path.dirname(os.path.realpath(__file__))

model = bn.import_DAG(f"{currentdir}/data/{sys.argv[1]}", verbose=0)

for node in model["model"].nodes():
    query = bn.inference.fit(model, variables=[node], evidence={}, verbose=0)
