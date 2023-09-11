import pyAgrum as gum
import os
import sys

currentdir = os.path.dirname(os.path.realpath(__file__))

# Load the BN to compare properly time of learning
bn = gum.loadBN(f"{currentdir}/data/alarm.bif")

learner = gum.BNLearner(f"{currentdir}/data/sample_{sys.argv[1]}_alarm.csv")
learner.useGreedyHillClimbing()
learner.useScoreBIC()
learner.useSmoothingPrior(0.1)
learnDag = learner.learnDAG()

# estimate CPDs
bnlearned = learner.learnParameters(learnDag)

# Save the model
gum.saveBN(bnlearned, f"{currentdir}/data/pyAgrum_learned_{sys.argv[1]}_alarm.bif")
