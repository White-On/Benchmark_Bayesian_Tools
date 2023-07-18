import bnlearn as bn
import pandas as pd
from pgmpy.readwrite import BIFWriter
import os
import sys

current_dir = os.path.dirname(os.path.realpath(__file__))

# Load the BN to compare properly time of learning
true_model = bn.import_DAG(f"{current_dir}/data/alarm.bif",verbose=False)

# BIFWriter(true_model["model"]).write_bif(
#     f"{current_dir}/data/outOfContext.bif"
# )
