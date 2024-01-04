from pandas import read_csv
from pgmpy.estimators import PC, BayesianEstimator
from pgmpy.models import BayesianModel
from pgmpy.readwrite import BIFWriter, BIFReader
import os
import sys

import warnings

warnings.filterwarnings("ignore")

from pathlib import Path

current_dir = Path(__file__).parents[1].absolute()

# Load the BN to compare properly time of learning
bn = BIFReader(f"{current_dir}/data/micro_child.bif").get_model()

# Read the data from the file
samples = read_csv(f"{current_dir}/data/sample_{sys.argv[1]}_micro_child.csv", sep=",")

# estimate structure
est = PC(samples)
skel, seperating_sets = est.build_skeleton(significance_level=0.01, show_progress=False)

pdag = est.skeleton_to_pdag(skel, seperating_sets)

best_model = pdag.to_dag()
# estimate parameters
best_model = BayesianModel(best_model.edges())
best_model.fit(samples, estimator=BayesianEstimator, prior_type="K2")

# Save the model
# best_model.save(
#     f"{current_dir}/data/pgmpy_learned_{sys.argv[1]}_micro_child.bif", filetype="bif"
# )
BIFWriter(best_model).write_bif(f"{current_dir}/data/pgmpy_learned_{sys.argv[1]}_micro_child.bif")