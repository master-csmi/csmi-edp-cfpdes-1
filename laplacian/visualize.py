import pyvista as pv # <2>
import os

# Define the path to the case file directory
case_path = os.path.abspath('export_sin_cos/Export.case') # <3>
reader = pv.get_reader(case_path) # <4>
mesh = reader.read()
mesh.plot() # <5>

#scalars="cfpdes.momentum.velocity", clim=[-1, 1],
        #   cpos='xy', cmap='RdBu', show_scalar_bar=True, show_edges=True