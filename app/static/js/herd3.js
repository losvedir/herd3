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

var ControlForm = React.createClass({
  render: function() {
    return(
      <fieldset>
        <form>
          <div>
            <label>Coach:
              <input type="text" name="coach" />
            </label>
          </div>

          <div>
            <label>Client:
              <input type="text" name="client" />
            </label>
          </div>

          <input className="button" type="submit" value="Update" />
        </form>
      </fieldset>
    );
  }
})

var Dashboard = React.createClass({
  render: function() {
    return(
      <div>
        <h1>welcome to the world of tomorrow...</h1>
        <div className="barchart">
          {BarChartD3(this.props.data)}
        </div>
        <div className="form">
          <ControlForm />
        </div>
      </div>
    );
  }
})

d3.json('/data', function(err, data) {
  React.renderComponent(
    <Dashboard data={data} />,
    document.getElementById('main')
  );
});
