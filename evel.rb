

	    print("")
    print("Elevation Chart Maker 1.0")
    print("")
    print("The following service calculates elevation data between two points")
    print("and builds an HTTP chart using Google's Elevation service and Chart API")
    print("")

    # Collect the Latitude/Longitude input string
    # from the user
    startStr = raw_input('Enter the start latitude,longitude value (default Mt. Whitney) --> ').replace(' ','')
    if not startStr:
      startStr = "36.578581,-118.291994"

    endStr = raw_input('Enter the end latitude,longitude value (default Death Valley) --> ').replace(' ','')
    if not endStr:
      endStr = "36.23998,-116.83171"

    pathStr = startStr + "|" + endStr

	def getChart(chartData, chartDataScaling="-500,5000", chartType="lc",chartLabel="Elevation in Meters",chartSize="500x160", chartColor="orange", **chart_args):
   
   chart_args.update({
        'cht': chartType,
        'chs': chartSize,
        'chl': chartLabel,
        'chco': chartColor,
        'chds': chartDataScaling,
        'chxt': 'x,y',
        'chxr': '1,-500,5000'
    })