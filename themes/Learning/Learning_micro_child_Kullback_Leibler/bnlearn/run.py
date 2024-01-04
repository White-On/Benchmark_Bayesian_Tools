import bnlearn as bn
from pgmpy.readwrite import BIFWriter
import pandas as pd
import os
import sys
from pathlib import Path

current_dir = Path(__file__).parents[1].absolute()

# Load the BN to compare properly time of learning
true_model = bn.import_DAG(f"{current_dir}/data/micro_child.bif")

# Load the data
df = pd.read_csv(f"{current_dir}/data/sample_{sys.argv[1]}_micro_child.csv")

# learning the structure
model_learned = bn.structure_learning.fit(
    df, methodtype="hc", scoretype="bic", verbose=False
)

# learning the parameters
model_learned = bn.parameter_learning.fit(
    model_learned, df, methodtype="bayes", verbose=False
)

# Save the model
BIFWriter(model_learned["model"]).write_bif(
    f"{current_dir}/data/bnlearn_learned_{sys.argv[1]}_micro_child.bif"
)
