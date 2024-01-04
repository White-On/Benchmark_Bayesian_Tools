import pyAgrum as gum
import os
import sys
import ast


"""Create samples from a BN and save them in a csv file"""
bifFile = sys.argv[-1]
sample_size = sys.argv[2:-1]
print(sample_size, bifFile)
currentdir = os.path.dirname(os.path.realpath(__file__))
bn = gum.loadBN(f"{currentdir}/data/{bifFile}")
for size in sample_size:
    gum.generateSample(
        bn,
        int(size),
        f"{currentdir}/data/sample_{size}_{bifFile.split('.')[0]}.csv",
    )
