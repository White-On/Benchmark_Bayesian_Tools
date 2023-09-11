import bnlearn as bn
from pgmpy.readwrite import BIFWriter
import pandas as pd
import os
import sys

current_dir = os.path.dirname(os.path.realpath(__file__))

# Load the BN to compare properly time of learning
true_model = bn.import_DAG(f"{current_dir}/data/alarm.bif")


# bn.save(true_model, f"{currentdir}/data/bnlearn_learned_{sys.argv[1]}_alarm.bif")
BIFWriter(true_model["model"]).write_bif(
    f"{current_dir}/data/bnlearn_learned_{sys.argv[1]}_micro_child.bif"
)