// NOTE: JS `Date`s use 0 for January

// | Date                   | Daisie $59K | Donald (support) $40K | Mickey $55K | Minnie $49K |
// |------------------------+-------------+-----------------------+-------------+-------------|
// | new Date(2012, 10, 11) |        null | null                  | null        | null        |
// | new Date(2013, 0, 1)   |     57000.0 | null                  | null        | null        |
// | ...                    |             |                       |             |             |
// | new Date(2013, 8, 28)  |     59000.0 | 40000.0               | 55000.0     | 49000.0     |
// | new Date(2016, 5, 6)   |     59000.0 | 40000.0               | 55000.0     | 49000.0     |


google.load('visualization', '1.0', {
  packages: ['corechart'],
  callback: draw_salaries_chart
});

function draw_salaries_chart() {
  var data_table = new google.visualization.DataTable();
  var data = $("#salaries_chart").data("dataTable");
  var employees = $("#salaries_chart").data("employees");
  var chart_params = $("#salaries_chart").data("chartParams");

  data_table.addColumn({
    "type": "date",
    "label": "Date"
  });

  employees.map(function(employee) {
    data_table.addColumn({
      "type": "number",
      "label": employee.first_name + " " + employee.display_pay
    });
  });

  data.map(function(row) {
    var rest = row.slice(1);
    var rest_to_add = rest.map(function(x) {
      if(x !== null) {
        return {v: parseFloat(x)};
      } else {
        return x;q
      }
    });
    var row_to_add = [{v: new Date(row[0])}].concat(rest_to_add);

    data_table.addRow(row_to_add);
  });

  var chart = new google.visualization.LineChart(document.getElementById('salaries_chart'));
  chart.draw(data_table, chart_params);
};
