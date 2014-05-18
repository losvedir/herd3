/**
 * @jsx React.DOM
 */

var MyData = { arry: [1,2,3,4] }

var sampleData = {
  "aggregations": {
    "age_group": [
      {
        "to": 5,
        "doc_count": 10,
        "avg_height": 95
      },
      {
        "from": 5,
        "to": 10,
        "doc_count": 5,
          "avg_height": 130
      },
      {
        "from": 10,
        "to": 15,
        "doc_count": 4,
          "avg_height": 160
      },
      {
        "from": 15,
        "doc_count": 10,
        "avg_height": 175.5
      }
    ]
  }
}

chart = function(selection, arry) {
  selection.selectAll("p").
        data(arry).
      enter().append("p").
        text(function(d){ return "number was: " + d});
}

var BarChartD3 = React.createClass({
  render: function() {
    return <div></div>;
  },
  componentDidMount: function() {
    d3.select(this.getDOMNode()).call(chart, this.props.arry)
  },
  shouldComponentUpdate: function(props) {
    d3.select(this.getDOMNode()).call(chart, props.arry);
    return false;
  }
});

React.renderComponent(
  BarChartD3(MyData),
  document.getElementById('container')
);

