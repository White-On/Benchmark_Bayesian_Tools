import pyAgrum as gum
import pyAgrum.lib.bn_vs_bn as gcm
import os
import sys

curentdir = os.path.dirname(os.path.realpath(__file__))

bn = gum.loadBN(f"{curentdir}/data/alarm.bif")

# we check if the file exists
filename = f"{curentdir}/data/{sys.argv[1]}_learned_{sys.argv[2]}_alarm.bif"
if not os.path.isfile(filename):
    print(None,end="")
    exit()
bnlearn = gum.loadBN(filename)

cmp=gcm.GraphicalBNComparator(bn,bnlearn)

print(cmp.scores()["fscore"],end="")
