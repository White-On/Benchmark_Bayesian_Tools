import bnlearn as bnlearn
import os
import sys

currentdir = os.path.dirname(os.path.realpath(__file__))

bn = bnlearn.import_DAG(f"{currentdir}/data/{sys.argv[1]}")