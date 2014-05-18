/**
 * @jsx React.DOM
 */

chart = function(selection, age_groups) {
  selection.selectAll("p").
      data(age_groups).
    enter().append("p").
      text(function(d){ return "to: " + d.to + " from: " + d.from + " doc_count: " + d.doc_count + " avg_height: " + d.avg_height});
}

var BarChartD3 = React.createClass({
  render: function() {
    return <div></div>;
  },
  componentDidMount: function() {
    d3.select(this.getDOMNode()).call(chart, this.props.aggregations.age_group)
  },
  shouldComponentUpdate: function(props) {
    d3.select(this.getDOMNode()).call(chart, props.aggregations.age_group);
    return false;
  }
});

d3.json('/data', function(err, data) {
  React.renderComponent(
    BarChartD3(data),
    document.getElementById('container')
  );
});
