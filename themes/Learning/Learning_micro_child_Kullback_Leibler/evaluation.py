import pyAgrum as gum
import pyAgrum.lib.bn_vs_bn as gcm
import os


def evaluateFscore(filenameBif, libraryName, arg):
    curentdir = os.path.dirname(os.path.realpath(__file__))
    bn_original = gum.loadBN(f"{curentdir}/data/{filenameBif}")

    # we check if the file exists
    filenameBnLearned = f"{curentdir}/data/{libraryName}_learned_{arg}_{filenameBif}"
    if not os.path.isfile(filenameBnLearned):
        return None
    bn_learned = gum.loadBN(filenameBnLearned)

    # we're checking if both Bayesian Networks have the same variables
    bn_original_names = bn_original.names()
    bn_learned_names = bn_learned.names()
    if set(bn_original_names) != set(bn_learned_names):
        # we're adding the missing variables to the Bayesian Network that has less variables
        min_size = min(len(bn_original_names),len(bn_learned_names))
        bn_min = bn_original if min_size == len(bn_original_names) else bn_learned
        bn_max = bn_original if min_size == len(bn_learned_names) else bn_learned
        
        for var in bn_max.names():
            if var not in bn_min.names():
                bn_min.add(gum.LabelizedVariable(var, var, bn_max.variable(var).labels()))

    cmp = gcm.GraphicalBNComparator(bn_original, bn_learned)

    return cmp.scores()["fscore"]


def evaluateRecall(filenameBif, libraryName, arg):
    """Evaluate the Recall of a learned BN"""
    curentdir = os.path.dirname(os.path.realpath(__file__))
    bn_original = gum.loadBN(f"{curentdir}/data/{filenameBif}")

    # we check if the file exists
    filenameBnLearned = f"{curentdir}/data/{libraryName}_learned_{arg}_{filenameBif}"
    if not os.path.isfile(filenameBnLearned):
        return None
    bn_learned = gum.loadBN(filenameBnLearned)

    # we're checking if both Bayesian Networks have the same variables
    bn_original_names = bn_original.names()
    bn_learned_names = bn_learned.names()
    if set(bn_original_names) != set(bn_learned_names):
        # we're adding the missing variables to the Bayesian Network that has less variables
        min_size = min(len(bn_original_names),len(bn_learned_names))
        bn_min = bn_original if min_size == len(bn_original_names) else bn_learned
        bn_max = bn_original if min_size == len(bn_learned_names) else bn_learned
        
        for var in bn_max.names():
            if var not in bn_min.names():
                bn_min.add(gum.LabelizedVariable(var, var, bn_max.variable(var).labels()))

    cmp = gcm.GraphicalBNComparator(bn_original, bn_learned)

    return cmp.scores()["recall"]


def evaluatePrecision(filenameBif, libraryName, arg):
    """"""
    curentdir = os.path.dirname(os.path.realpath(__file__))
    bn_original = gum.loadBN(f"{curentdir}/data/{filenameBif}")

    # we check if the file exists
    filenameBnLearned = f"{curentdir}/data/{libraryName}_learned_{arg}_{filenameBif}"
    if not os.path.isfile(filenameBnLearned):
        return None
    bn_learned = gum.loadBN(filenameBnLearned)

    # we're checking if both Bayesian Networks have the same variables
    bn_original_names = bn_original.names()
    bn_learned_names = bn_learned.names()
    if set(bn_original_names) != set(bn_learned_names):
        # we're adding the missing variables to the Bayesian Network that has less variables
        min_size = min(len(bn_original_names),len(bn_learned_names))
        bn_min = bn_original if min_size == len(bn_original_names) else bn_learned
        bn_max = bn_original if min_size == len(bn_learned_names) else bn_learned
        
        for var in bn_max.names():
            if var not in bn_min.names():
                bn_min.add(gum.LabelizedVariable(var, var, bn_max.variable(var).labels()))

    cmp = gcm.GraphicalBNComparator(bn_original, bn_learned)

    return cmp.scores()["precision"]

def evaluateKullback_Leibler(filenameBif, libraryName, arg):
    curentdir = os.path.dirname(os.path.realpath(__file__))
    bn_original = gum.loadBN(f"{curentdir}/data/{filenameBif}")

    # we check if the file exists
    filenameBnLearned = f"{curentdir}/data/{libraryName}_learned_{arg}_{filenameBif}"
    if not os.path.isfile(filenameBnLearned):
        return None
    bn_learned = gum.loadBN(filenameBnLearned)

    # we're checking if both Bayesian Networks have the same variables
    bn_original_names = bn_original.names()
    bn_learned_names = bn_learned.names()
    if set(bn_original_names) != set(bn_learned_names):
        # we're adding the missing variables to the Bayesian Network that has less variables
        min_size = min(len(bn_original_names),len(bn_learned_names))
        bn_min = bn_original if min_size == len(bn_original_names) else bn_learned
        bn_max = bn_original if min_size == len(bn_learned_names) else bn_learned
        
        for var in bn_max.names():
            if var not in bn_min.names():
                bn_min.add(gum.LabelizedVariable(var, var, bn_max.variable(var).labels()))

    return gum.ExactBNdistance(bn_original, bn_learned).compute()['klPQ']

def evaluateKullback_Leibler(filenameBif, libraryName, arg):
    curentdir = os.path.dirname(os.path.realpath(__file__))
    bn_original = gum.loadBN(f"{curentdir}/data/{filenameBif}")

    # we check if the file exists
    filenameBnLearned = f"{curentdir}/data/{libraryName}_learned_{arg}_{filenameBif}"
    if not os.path.isfile(filenameBnLearned):
        return None
    bn_learned = gum.loadBN(filenameBnLearned)

    # we're checking if both Bayesian Networks have the same variables
    bn_original_names = bn_original.names()
    bn_learned_names = bn_learned.names()
    if set(bn_original_names) != set(bn_learned_names):
        # we're adding the missing variables to the Bayesian Network that has less variables
        min_size = min(len(bn_original_names),len(bn_learned_names))
        bn_min = bn_original if min_size == len(bn_original_names) else bn_learned
        bn_max = bn_original if min_size == len(bn_learned_names) else bn_learned
        
        for var in bn_max.names():
            if var not in bn_min.names():
                bn_min.add(gum.LabelizedVariable(var, var, bn_max.variable(var).labels()))

    return gum.ExactBNdistance(bn_original, bn_learned).compute()['errorPQ']