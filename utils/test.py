
from IPython.core.display import display, HTML
from string import Template
import json, random

def loadFile(filename):
    with open(filename, 'r') as text_file:
        file_content = text_file.read()
    return file_content

def runJs():
    html_template = Template('''
    <style> $css_text </style>
    <div id="graph-div"></div>
    <script> $js_text </script>
    ''')

    js_text = loadFile('resources/test.js')
    css_text = loadFile('resources/test.css')

    return HTML(html_template.substitute({'css_text': css_text, 'js_text': js_text}))

def modify(width, height):
    html_template = Template('''
    <script>
    svg.select('#my-rect')
        .transition()
        .duration(1000)
        .attr("width", $width)
        .attr("height", $height);
    </script>
    ''')
    return HTML(html_template.substitute({'width': width, 'height': height}))
