window.App.controller 'ChartsOpenBalanceController', ($scope, $rootScope, $timeout) ->
  data = google.visualization.arrayToDataTable([
    ['Year', 'Sales', 'Expenses'],
    ['2013',  1000,      400],
    ['2014',  1170,      460],
    ['2015',  660,       1120],
    ['2016',  1030,      540]
  ])

  options = {
    title: 'Company Performance',
    hAxis: {title: 'Year',  titleTextStyle: {color: '#333'}},
    vAxis: {minValue: 0}
  }

  chart = new google.visualization.AreaChart(document.getElementById('open-balance-chart'))
  chart.draw(data, options)