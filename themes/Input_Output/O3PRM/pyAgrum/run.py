import pyAgrum as gum
import sys
from pathlib import Path

data_path = Path(__file__).parents[1] / "data" / f'{sys.argv[1]}'

# doen't work due to the fact that the filename need to start with a './' and can't be absolute
bn = gum.loadBN(data_path.__str__())
