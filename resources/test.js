
var margin = {top: 20, right: 20, bottom: 30, left: 40},
width = 500 - margin.left - margin.right,
height = 300 - margin.top - margin.bottom;

var svg = d3.select('#graph-div')
.append('svg')
.attr("width", width + margin.left + margin.right)
.attr("height", height + margin.top + margin.bottom);

svg.append('rect')
.attr("id", "my-rect")
.attr("x", 10)
.attr("y", 10)
.attr("width", 80)
.attr("height", 80)
.style("fill", "blue")
.transition()
.duration(1000)
.attr("x", 200)
.attr("y", 200);
