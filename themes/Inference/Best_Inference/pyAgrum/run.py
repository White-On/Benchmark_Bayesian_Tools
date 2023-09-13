import pyAgrum as gum
import sys
from pathlib import Path

data_path = Path(__file__).parents[1] / "data" / f'{sys.argv[1]}'

bn = gum.loadBN(data_path.__str__())
ie = gum.LazyPropagation(bn)
ie.makeInference()

for node in bn.names():
    ie.posterior(node)
