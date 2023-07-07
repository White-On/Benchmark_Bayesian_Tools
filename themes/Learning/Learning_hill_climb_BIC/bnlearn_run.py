import bnlearn as bn
import pyAgrum as gum
import pandas as pd
import os
import sys


# as there is no way to save the bayesian network in bnlearn in bif format, we need to convert it to PyAgrum format
def bnlearn_to_pyAgrum(bn_Bayesian_Network):
    CPDs = bn.print_CPD(bn_Bayesian_Network, verbose=False)

    domain = {}
    for CPD in CPDs:
        for key in CPDs[CPD].keys():
            domain[key] = len(set(CPDs[CPD][key].values))
    domain.pop("p")

    new_bn = gum.BayesNet(f'{bn_Bayesian_Network["model"].name}_copy')

    for node in bn_Bayesian_Network["model"].nodes():
        new_bn.add(gum.LabelizedVariable(node, node, domain[node]))
    for edge in bn_Bayesian_Network["model"].edges():
        new_bn.addArc(edge[0], edge[1])
    for CPD in CPDs:
        cases = {key: CPDs[CPD][key].values for key in CPDs[CPD].keys() if key != "p"}
        jp = CPDs[CPD]["p"].values
        for x in range(len(cases[list(cases.keys())[0]])):
            dict = {key: int(cases[key][x]) for key in cases.keys()}
            if len(list(dict.keys())) == 1:
                new_bn.cpt(CPD).fillWith(jp)
            else:
                new_bn.cpt(CPD)[dict] = jp[x]

    return new_bn


currentdir = os.path.dirname(os.path.realpath(__file__))

# Load the BN to compare properly time of learning
true_model = bn.import_DAG(f"{currentdir}/data/alarm.bif")

# Load the data
df = pd.read_csv(f"{currentdir}/data/sample_{sys.argv[1]}_alarm.csv")

model_learned = bn.structure_learning.fit(df, methodtype="hc", scoretype="bic")

model_learned = bnlearn_to_pyAgrum(model_learned)

# Save the model
gum.saveBN(model_learned, f"{currentdir}/data/bnlearn_learned_{sys.argv[1]}_alarm.bif")
