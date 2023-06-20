import pyAgrum as gum
import os

def createSamples(**kwargs):
    """Create samples from a BN and save them in a csv file"""
    bifFile = kwargs['bifFile']
    sample_size = kwargs['sample_size']
    currentdir = os.path.dirname(os.path.realpath(__file__))
    bn = gum.loadBN(f"{currentdir}/data/{bifFile}")
    for size in sample_size:
        gum.generateSample(bn,int(size),f"{currentdir}/data/sample_{size}_{bifFile.split('.')[0]}.csv")
    return
