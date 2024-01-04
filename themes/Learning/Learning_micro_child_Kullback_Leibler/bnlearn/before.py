import bnlearn as bn
import pandas as pd
from pgmpy.readwrite import BIFWriter
import os
import sys
from pathlib import Path

current_dir = Path(__file__).parents[1].absolute()

# Load the BN to compare properly time of learning
true_model = bn.import_DAG(f"{current_dir}/data/micro_child.bif")

BIFWriter(true_model["model"]).write_bif(
    f"{current_dir}/data/outOfContext.bif"
)

