from pgmpy.readwrite import UAIReader
import sys
import os

currentdir = os.path.dirname(os.path.realpath(__file__))

reader = UAIReader(f"{currentdir}/data/{sys.argv[1]}")
