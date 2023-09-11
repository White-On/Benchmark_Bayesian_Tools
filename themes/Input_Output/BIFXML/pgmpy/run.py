from pgmpy.readwrite import XMLBIFReader
import sys
import os

currentdir = os.path.dirname(os.path.realpath(__file__))

reader = XMLBIFReader(f"{currentdir}/data/{sys.argv[1]}")
