import os
import bnlearn as bn
import sys

currentdir = os.path.dirname(os.path.realpath(__file__))

model = bn.import_DAG(f"{currentdir}/data/{sys.argv[1]}",verbose=0)