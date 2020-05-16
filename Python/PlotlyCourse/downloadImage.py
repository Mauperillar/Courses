#No funciona, sale un error no es seguro si es por orca instalado con npm o la libraría psutil

import plotly.graph_objects as go

import plotly
fig = go.FigureWidget(data=go.Bar(y=[2,3,1]))
fig.show(renderer ="miImagen.png")