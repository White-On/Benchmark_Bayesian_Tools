import bnlearn as bn
import pandas as pd
import os
import sys

currentdir = os.path.dirname(os.path.realpath(__file__))

# Load the BN to compare properly time of learning
true_model = bn.import_DAG(f"{currentdir}/data/alarm.bif")

# Load the data
df = pd.read_csv(f"{currentdir}/data/sample_{sys.argv[1]}_alarm.csv")  

model_learned = bn.structure_learning.fit(df, methodtype="ex",scoretype="bic")

bn.save(model_learned, f"{currentdir}/data/bnlearn_learned_{sys.argv[1]}_alarm.bif")