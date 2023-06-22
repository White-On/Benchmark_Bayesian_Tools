import pyAgrum as gum
import pyAgrum.lib.bn_vs_bn as gcm
import os


def evaluateFscore(filenameBif, libraryName, arg):
    curentdir = os.path.dirname(os.path.realpath(__file__))
    bn = gum.loadBN(f"{curentdir}/data/{filenameBif}")

    # we check if the file exists
    filenameBnLearned = f"{curentdir}/data/{libraryName}_learned_{arg}_{filenameBif}"
    if not os.path.isfile(filenameBnLearned):
        return None
    bnlearn = gum.loadBN(filenameBnLearned)

    cmp = gcm.GraphicalBNComparator(bn, bnlearn)

    return cmp.scores()["fscore"]
