import pyAgrum as gum
import sys
from pathlib import Path

data_path = Path(__file__).parent / "data"

bn = gum.loadBN(f"{data_path}/{sys.argv[1]}")
ie = gum.LazyPropagation(bn)
ie.makeInference()

for node in bn.names():
    ie.posterior(node)
