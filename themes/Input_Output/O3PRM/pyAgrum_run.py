import sys
import pyAgrum as gum
import os

currentdir = os.path.dirname(os.path.realpath(__file__))

# doen't work due to the fact that the filename need to start with a './' and can't be absolute
bn = gum.loadBN(f"{currentdir}/data/{sys.argv[1]}")
