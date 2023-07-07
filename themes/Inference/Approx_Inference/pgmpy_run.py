from pgmpy.readwrite import BIFReader
from pgmpy.inference import BeliefPropagation
import os
import sys

currentdir = os.path.dirname(os.path.realpath(__file__))

reader = BIFReader(f"{currentdir}/data/{sys.argv[1]}")

model = reader.get_model()

infer = BeliefPropagation(model)
for node in model.nodes():
    infer.query([node])
