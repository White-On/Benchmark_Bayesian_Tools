from pandas import read_csv
from pgmpy.estimators import HillClimbSearch, BicScore, BayesianEstimator
from pgmpy.models import BayesianModel
from pgmpy.readwrite import BIFWriter, BIFReader
import os
import sys

currentdir = os.path.dirname(os.path.realpath(__file__))

bn = BIFReader(f"{currentdir}/data/alarm.bif").get_model()

# Read the data from the file
samples = read_csv(f"{currentdir}/data/sample_{sys.argv[1]}_alarm.csv", sep=",")

# Save the model
BIFWriter(bn).write_bif(f"{currentdir}/data/outContext.bif")
