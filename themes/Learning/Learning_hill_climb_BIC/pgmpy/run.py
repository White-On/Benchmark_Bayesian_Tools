from pandas import read_csv
from pgmpy.estimators import HillClimbSearch, BicScore, BayesianEstimator
from pgmpy.models import BayesianModel
from pgmpy.readwrite import BIFWriter, BIFReader
import os
import sys

currentdir = os.path.dirname(os.path.realpath(__file__))

# Read the data from the file
samples = read_csv(f"{currentdir}/data/sample_{sys.argv[1]}_alarm.csv", sep=",")

# estimate structure
est = HillClimbSearch(samples)
best_model = est.estimate(scoring_method=BicScore(samples))

# estimate parameters
best_model = BayesianModel(best_model.edges())
best_model.fit(samples, estimator=BayesianEstimator, prior_type="K2")

# Save the model
best_model.save(
    f"{currentdir}/data/pgmpy_learned_{sys.argv[1]}_alarm.bif", filetype="bif"
)
