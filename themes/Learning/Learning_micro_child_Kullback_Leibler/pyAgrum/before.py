import pyAgrum as gum
import os
import sys
from pathlib import Path

current_dir = Path(__file__).parents[1].absolute()

bn = gum.loadBN(f"{current_dir}/data/micro_child.bif")


gum.saveBN(bn, f"{current_dir}/data/outContext.bif")
