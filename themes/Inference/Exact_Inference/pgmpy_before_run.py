from pgmpy.readwrite import BIFReader
from pgmpy.inference import VariableElimination
import os
import sys

currentdir = os.path.dirname(os.path.realpath(__file__))

reader = BIFReader(f"{currentdir}/data/{sys.argv[1]}")
model = reader.get_model()

infer = VariableElimination(model)
