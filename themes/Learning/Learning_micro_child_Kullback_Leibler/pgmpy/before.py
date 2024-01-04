from pandas import read_csv
from pgmpy.estimators import PC, BayesianEstimator
from pgmpy.models import BayesianModel
from pgmpy.readwrite import BIFWriter, BIFReader
import os
import sys
from pathlib import Path

current_dir = Path(__file__).parents[1].absolute()

bn = BIFReader(f"{current_dir}/data/micro_child.bif").get_model()

# Read the data from the file
samples = read_csv(f"{current_dir}/data/sample_{sys.argv[1]}_micro_child.csv", sep=",")

# Save the model
BIFWriter(bn).write_bif(f"{current_dir}/data/outContext.bif")
