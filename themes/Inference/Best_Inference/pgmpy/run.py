from pgmpy.readwrite import BIFReader
from pgmpy.inference import VariableElimination
import sys
from pathlib import Path

data_path = Path(__file__).parent / "data"

reader = BIFReader(f"{data_path}/{sys.argv[1]}")

model = reader.get_model()

infer = VariableElimination(model)
for node in model.nodes():
    infer.query([node])
