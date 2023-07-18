import pyAgrum as gum
import os
import sys

current_dir = os.path.dirname(os.path.realpath(__file__))

# Load the BN to compare properly time of learning
bn = gum.loadBN(f"{current_dir}/data/micro_child.bif")

learner = gum.BNLearner(f"{current_dir}/data/sample_{sys.argv[1]}_micro_child.csv")
learner.useMIIC()
learner.useScoreBIC()
learner.useSmoothingPrior(1.0)
learnDag = learner.learnDAG()

# estimate CPDs
bnlearned = learner.learnParameters(learnDag)

# Save the model
gum.saveBN(bnlearned, f"{current_dir}/data/pyAgrum_learned_{sys.argv[1]}_micro_child.bif")
