using RAWSimO.Core.IO;
using RAWSimO.Core.Statistics;
using RAWSimO.Toolbox;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RAWSimO.DataPreparation
{
    /// <summary>
    /// Specifies data for one footprint plot.
    /// </summary>
    public class FootprintScatterPlotData
    {
        /// <summary>
        /// The data to show on the x-axis.
        /// </summary>
        public FootprintDatapoint.FootPrintEntry XAxis;
        /// <summary>
        /// The data to show on the y-axis.
        /// </summary>
        public FootprintDatapoint.FootPrintEntry YAxis;
        /// <summary>
        /// The data to show as a heat value (overrides any group colors).
        /// </summary>
        public FootprintDatapoint.FootPrintEntry? Heat;
    }
    /// <summary>
    /// Enables scatter plotting of footprint data.
    /// </summary>
    public class FootprintScatterProcessor
    {
        /// <summary>
        /// The default data to plot for the new tag-based plots.
        /// </summary>
        public static readonly List<FootprintScatterPlotData> DEFAULT_TAG_BASED_SCATTERPLOT_DATA = new List<FootprintScatterPlotData>
        {
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg,
            YAxis = FootprintDatapoint.FootPrintEntry.DistanceTraveled,
            Heat = FootprintDatapoint.FootPrintEntry.OrdersHandled },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg,
            YAxis = FootprintDatapoint.FootPrintEntry.DistanceTraveled,
            Heat = FootprintDatapoint.FootPrintEntry.OrderTurnoverTimeAvg },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg,
            YAxis = FootprintDatapoint.FootPrintEntry.DistanceTraveled,
            Heat = FootprintDatapoint.FootPrintEntry.ItemThroughputRateScore },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg,
            YAxis = FootprintDatapoint.FootPrintEntry.DistanceTraveled,
            Heat = FootprintDatapoint.FootPrintEntry.OrderThroughputRate },
        };

        public static readonly List<FootprintScatterPlotData> DEFAULT_TAG_BASED_W_SCATTERPLOT_DATA = new List<FootprintScatterPlotData>
        {
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.W2,
            YAxis = FootprintDatapoint.FootPrintEntry.W3,
            Heat = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.W2,
            YAxis = FootprintDatapoint.FootPrintEntry.W3,
            Heat = FootprintDatapoint.FootPrintEntry.OrdersHandled },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.W2,
            YAxis = FootprintDatapoint.FootPrintEntry.W3,
            Heat = FootprintDatapoint.FootPrintEntry.DistanceTraveled },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.W2,
            YAxis = FootprintDatapoint.FootPrintEntry.W3,
            Heat = FootprintDatapoint.FootPrintEntry.TripCount },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.W2,
            YAxis = FootprintDatapoint.FootPrintEntry.W3,
            Heat = FootprintDatapoint.FootPrintEntry.OrderThroughputTimeAvg },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.W2,
            YAxis = FootprintDatapoint.FootPrintEntry.W3,
            Heat = FootprintDatapoint.FootPrintEntry.OrderTurnoverTimeAvg },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.W2,
            YAxis = FootprintDatapoint.FootPrintEntry.W3,
            Heat = FootprintDatapoint.FootPrintEntry.OrderPileOneAvg },
        };

        public static readonly List<FootprintScatterPlotData> DEFAULT_TAG_BASED_DISTR_SCATTERPLOT_DATA = new List<FootprintScatterPlotData>
        {
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.Zb_Over_Za,
            YAxis = FootprintDatapoint.FootPrintEntry.Zc_Over_Za,
            Heat = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.Zb_Over_Za,
            YAxis = FootprintDatapoint.FootPrintEntry.Zc_Over_Za,
            Heat = FootprintDatapoint.FootPrintEntry.DistanceTraveledPerBot },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.Zb_Over_Za,
            YAxis = FootprintDatapoint.FootPrintEntry.Zc_Over_Za,
            Heat = FootprintDatapoint.FootPrintEntry.DistanceTraveled },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.Zb_Over_Za,
            YAxis = FootprintDatapoint.FootPrintEntry.Zc_Over_Za,
            Heat = FootprintDatapoint.FootPrintEntry.TripCount },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.Zb_Over_Za,
            YAxis = FootprintDatapoint.FootPrintEntry.Zc_Over_Za,
            Heat = FootprintDatapoint.FootPrintEntry.OrderThroughputTimeAvg },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.Zb_Over_Za,
            YAxis = FootprintDatapoint.FootPrintEntry.Zc_Over_Za,
            Heat = FootprintDatapoint.FootPrintEntry.OrderTurnoverTimeAvg },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.Zb_Over_Za,
            YAxis = FootprintDatapoint.FootPrintEntry.Zc_Over_Za,
            Heat = FootprintDatapoint.FootPrintEntry.OrderPileOneAvg },
        new FootprintScatterPlotData() {
            XAxis = FootprintDatapoint.FootPrintEntry.Zb_Over_Za,
            YAxis = FootprintDatapoint.FootPrintEntry.Zc_Over_Za,
            Heat = FootprintDatapoint.FootPrintEntry.OrdersHandled },
        };


        /// <summary>
        /// The default data to plot for groups with distribution in the tag.
        /// </summary>
        public static readonly List<FootprintScatterPlotData> DEFAULT_UNGROUPED_SCATTERPLOT_DATA = new List<FootprintScatterPlotData>
        {
            new FootprintScatterPlotData() {
                XAxis = FootprintDatapoint.FootPrintEntry.LastMileTripOStationTimeAvg,
                YAxis = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg,
                Heat = FootprintDatapoint.FootPrintEntry.ItemThroughputRateScore },
            new FootprintScatterPlotData() {
                XAxis = FootprintDatapoint.FootPrintEntry.DistanceTraveledPerBot,
                YAxis = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg,
                Heat = FootprintDatapoint.FootPrintEntry.ItemThroughputRateScore },
            new FootprintScatterPlotData() {
                XAxis = FootprintDatapoint.FootPrintEntry.TripTime,
                YAxis = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg,
                Heat = FootprintDatapoint.FootPrintEntry.ItemThroughputRateScore },
            new FootprintScatterPlotData() {
                XAxis = FootprintDatapoint.FootPrintEntry.TripTimeWithoutQueueing,
                YAxis = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg,
                Heat = FootprintDatapoint.FootPrintEntry.ItemThroughputRateScore },
        };
        /// <summary>
        /// The default entry combinations to generate footprints for.
        /// </summary>
        public static readonly List<FootprintScatterPlotData> DEFAULT_GROUPINGS_SCATTERPLOT_DATA = new List<FootprintScatterPlotData>()
        {
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.OrderThroughputTimeAvg, YAxis = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.ItemThroughputRate, YAxis = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.ItemThroughputRateScore, YAxis = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.OrderThroughputTimeAvg, YAxis = FootprintDatapoint.FootPrintEntry.OrderThroughputRate },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.OrderTurnoverTimeAvg, YAxis = FootprintDatapoint.FootPrintEntry.OrderThroughputRate },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.OrdersHandled, YAxis = FootprintDatapoint.FootPrintEntry.BundlesHandled },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.TripDistance, YAxis = FootprintDatapoint.FootPrintEntry.ItemPileOneAvg },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.LateOrdersFractional, YAxis = FootprintDatapoint.FootPrintEntry.ItemThroughputRateScore },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.OrderLatenessAvg, YAxis = FootprintDatapoint.FootPrintEntry.ItemThroughputRateScore },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.LateOrdersFractional, YAxis = FootprintDatapoint.FootPrintEntry.OrderLatenessAvg },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.ItemThroughputRateScore, YAxis = FootprintDatapoint.FootPrintEntry.OrderOffsetAvg },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.ISIdleTimeAvg, YAxis = FootprintDatapoint.FootPrintEntry.OSIdleTimeAvg },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.TimingDecisionsOverall, YAxis = FootprintDatapoint.FootPrintEntry.ItemThroughputRate },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.InvCombinedAvgRank, YAxis = FootprintDatapoint.FootPrintEntry.ItemThroughputRateScore },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.TripDistance, YAxis = FootprintDatapoint.FootPrintEntry.TripTime },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.TripDistance, YAxis = FootprintDatapoint.FootPrintEntry.TripTimeWithoutQueueing },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.TimeMoving, YAxis = FootprintDatapoint.FootPrintEntry.TimeQueueing },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.TimeQueueing, YAxis = FootprintDatapoint.FootPrintEntry.ItemThroughputRateScore },
            new FootprintScatterPlotData() { XAxis = FootprintDatapoint.FootPrintEntry.DistanceTraveledPerBot, YAxis = FootprintDatapoint.FootPrintEntry.ItemThroughputRateScore },
        };
        /// <summary>
        /// The default groups to consider.
        /// </summary>
        public static readonly List<Tuple<List<FootprintDatapoint.FootPrintEntry>, string>> DEFAULT_GROUPINGS = new List<Tuple<List<FootprintDatapoint.FootPrintEntry>, string>>()
        {
            new Tuple<List<FootprintDatapoint.FootPrintEntry>, string>(new List<FootprintDatapoint.FootPrintEntry>() { FootprintDatapoint.FootPrintEntry.Instance }, "scatterplotsinstances"),
            new Tuple<List<FootprintDatapoint.FootPrintEntry>, string>(new List<FootprintDatapoint.FootPrintEntry>() { FootprintDatapoint.FootPrintEntry.BotsPerOStation }, "scatterplotsostationbots"),
            new Tuple<List<FootprintDatapoint.FootPrintEntry>, string>(new List<FootprintDatapoint.FootPrintEntry>() { FootprintDatapoint.FootPrintEntry.NOStations }, "scatterplotsostations"),
            new Tuple<List<FootprintDatapoint.FootPrintEntry>, string>(new List<FootprintDatapoint.FootPrintEntry>() { FootprintDatapoint.FootPrintEntry.PP }, "scatterplotsmethodspp"),
            new Tuple<List<FootprintDatapoint.FootPrintEntry>, string>(new List<FootprintDatapoint.FootPrintEntry>() { FootprintDatapoint.FootPrintEntry.TA }, "scatterplotsmethodsta"),
            new Tuple<List<FootprintDatapoint.FootPrintEntry>, string>(new List<FootprintDatapoint.FootPrintEntry>() { FootprintDatapoint.FootPrintEntry.RB }, "scatterplotsmethodsrb"),
            new Tuple<List<FootprintDatapoint.FootPrintEntry>, string>(new List<FootprintDatapoint.FootPrintEntry>() { FootprintDatapoint.FootPrintEntry.IS }, "scatterplotsmethodsis"),
            new Tuple<List<FootprintDatapoint.FootPrintEntry>, string>(new List<FootprintDatapoint.FootPrintEntry>() { FootprintDatapoint.FootPrintEntry.PS }, "scatterplotsmethodsps"),
            new Tuple<List<FootprintDatapoint.FootPrintEntry>, string>(new List<FootprintDatapoint.FootPrintEntry>() { FootprintDatapoint.FootPrintEntry.OB }, "scatterplotsmethodsob"),
        };

        /// <summary>
        /// Creates a new processor instance.
        /// </summary>
        /// <param name="footprintFile">The file containing all the footprints to process.</param>
        public FootprintScatterProcessor(string footprintFile)
        {
            FootprintFile = footprintFile;
            OutputDirectory = !string.IsNullOrEmpty(Path.GetDirectoryName(footprintFile)) ? Path.GetDirectoryName(footprintFile) : Directory.GetCurrentDirectory();
        }

        /// <summary>
        /// The file containing the footprints.
        /// </summary>
        public string FootprintFile { get; private set; }
        /// <summary>
        /// The directory to write all files to.
        /// </summary>
        public string OutputDirectory { get; private set; }
        /// <summary>
        /// Writes a message to the log.
        /// </summary>
        /// <param name="msg">The message to log.</param>
        private void Log(string msg) { Console.Write(msg); }
        /// <summary>
        /// Writes a messageline to the log.
        /// </summary>
        /// <param name="msg">The line to log.</param>
        private void LogLine(string msg) { Console.WriteLine(msg); }

        /// <summary>
        /// All datapoints parsed from the footprint file.
        /// </summary>
        private List<FootprintDatapoint> _datapoints = new List<FootprintDatapoint>();

        /// <summary>
        /// Parses the footprint file.
        /// </summary>
        public void ReadFootprintData() { _datapoints = SharedDataPreparators.ParseFootprints(FootprintFile, LogLine); }

        /// <summary>
        /// Generates all specified scatter plots.
        /// </summary>
        /// <param name="basename">The base name to use for the scatter plot.</param>
        /// <param name="xyFootprintCombinations">The values to plot for the two axes.</param>
        /// <param name="groupBy">The values to group by.</param>
        public void PlotFootprintsScattered(
            string basename,
            List<FootprintScatterPlotData> xyFootprintCombinations,
            List<FootprintDatapoint.FootPrintEntry> groupBy)
        {
            // --> Prepare dat file
            LogLine("Preparing dat file(s) ...");
            Dictionary<FootprintDatapoint.FootPrintEntry, int> datColumns = new Dictionary<FootprintDatapoint.FootPrintEntry, int>();
            int currentIndex = 0;
            // Build dictionary of unique columns and indices for them
            foreach (var uniqueEntry in xyFootprintCombinations
                // X axis values
                .Select(t => t.XAxis)
                // Y axis values
                .Concat(xyFootprintCombinations.Select(t => t.YAxis))
                // Heat info
                .Concat(xyFootprintCombinations.Where(e => e.Heat != null).Select(e => (FootprintDatapoint.FootPrintEntry)e.Heat))
                // We only need every entry once
                .Distinct())
                datColumns[uniqueEntry] = ++currentIndex;
            string singleDatFile = basename + ".dat";
            // Group data (if required)
            Dictionary<List<Tuple<FootprintDatapoint.FootPrintEntry, string>>, string> dataGroups =
                // Check whether we need any grouping at all
                groupBy.Any() ?
                // Make cross product of the grouping combinations
                EnumerationHelpers.CrossProduct(groupBy.Select(i => _datapoints.Select(d => new Tuple<FootprintDatapoint.FootPrintEntry, string>(i, d[i].ToString())).Distinct().ToList()).ToList())
                // Create a dictionary containing the actual tuple and the corresponding dat file name
                .ToDictionary(k => k, v => basename + string.Join("", v.Select(e => e.Item1 + e.Item2)) + ".dat") :
                // No grouping required - leave a null
                null;
            LogLine("Found " + (dataGroups != null ? dataGroups.Count : 1) + " group(s)!");
            // Write dat file(s)
            if (dataGroups != null)
            {
                // Write file per data group
                foreach (var group in dataGroups)
                {
                    using (StreamWriter sw = new StreamWriter(Path.Combine(OutputDirectory, group.Value)))
                    {
                        // Write header
                        sw.Write(IOConstants.GNU_PLOT_COMMENT_LINE.ToString() + IOConstants.GNU_PLOT_VALUE_SPLIT.ToString());
                        foreach (var entry in datColumns.OrderBy(c => c.Value))
                            sw.Write(entry.Key.ToString() + IOConstants.GNU_PLOT_VALUE_SPLIT);
                        sw.WriteLine();
                        // Write all entries
                        foreach (var footprint in _datapoints.Where(d => group.Key.All(e => (d[e.Item1].ToString()) == e.Item2)))
                        {
                            foreach (var entry in datColumns.OrderBy(c => c.Value))
                                sw.Write((Convert.ToDouble(footprint[entry.Key])).ToString(IOConstants.FORMATTER) + IOConstants.GNU_PLOT_VALUE_SPLIT);
                            sw.WriteLine();
                        }
                    }
                }
            }
            else
            {
                // Write only a single file
                using (StreamWriter sw = new StreamWriter(Path.Combine(OutputDirectory, singleDatFile)))
                {
                    // Write header
                    sw.Write(IOConstants.GNU_PLOT_COMMENT_LINE.ToString() + IOConstants.GNU_PLOT_VALUE_SPLIT.ToString());
                    foreach (var entry in datColumns.OrderBy(c => c.Value))
                        sw.Write(entry.Key.ToString() + IOConstants.GNU_PLOT_VALUE_SPLIT);
                    sw.WriteLine();
                    // Write all entries
                    foreach (var footprint in _datapoints)
                    {
                        foreach (var entry in datColumns.OrderBy(c => c.Value))
                            sw.Write((Convert.ToDouble(footprint[entry.Key])).ToString(IOConstants.FORMATTER) + IOConstants.GNU_PLOT_VALUE_SPLIT);
                        sw.WriteLine();
                    }
                }
            }    



            // --> Prepare plot script
            LogLine("Preparing plot script ...");
            string plotScript = basename + ".gp";
            using (StreamWriter sw = new StreamWriter(Path.Combine(OutputDirectory, plotScript)))
            {
                sw.WriteLine("reset");
                sw.WriteLine("# Output definition");
                sw.WriteLine("set terminal pdfcairo enhanced size 7, 3 font \"Consolas, 12\"");
                sw.WriteLine("set output \"" + basename + ".pdf\"");
                sw.WriteLine("set lmargin 13");
                sw.WriteLine("set rmargin 13");
                sw.WriteLine("# Parameters");
                if (basename == "heatedscatterplots_distr" || basename == "heatedscatterplots_weight")
                {
                    sw.WriteLine("set key off");
                }
                else
                {
                    sw.WriteLine("set key right top Right");
                }
                sw.WriteLine("set grid");
                sw.WriteLine("set style fill solid 0.75");
                string colorDefinition = DataProcessor.GenerateLineStyleScriptCodeWithPoints();
                int colorCount = colorDefinition.Length - colorDefinition.Replace(IOConstants.LINE_TERMINATOR, string.Empty).Length - 1;
                sw.WriteLine(colorDefinition);
                // Make one diagram per given combination of characteristics
                foreach (var combination in xyFootprintCombinations)
                {
                    //sw.WriteLine("set title \"" + combination.XAxis + " / " + combination.YAxis + "\"");
                    sw.WriteLine("set title \"" + combination.Heat + "\"");
                    sw.WriteLine("set xlabel \"" + combination.XAxis + "\"");
                    sw.WriteLine("set ylabel \"" + combination.YAxis + "\"");
                    sw.WriteLine("plot \\");
                    if (dataGroups != null)
                    {
                        // Make separate plots for the groups
                        int counter = 0;
                        foreach (var dataGroup in dataGroups.OrderByAlphaNumeric(g => g.Value))
                        {
                            if (++counter < dataGroups.Count)
                                sw.WriteLine("\"" + dataGroup.Value + "\"" +
                                    " u " + datColumns[combination.XAxis] + ":" + datColumns[combination.YAxis] + (combination.Heat == null ? "" : ":" + datColumns[(FootprintDatapoint.FootPrintEntry)combination.Heat]) +
                                    " w points linestyle " + ((counter % colorCount) + 1) + (combination.Heat == null ? "" : " palette") +
                                    " t \"" + string.Join("/", dataGroup.Key.Select(e => e.Item2)) + "\"" +
                                    ", \\");
                            else
                                sw.WriteLine("\"" + dataGroup.Value + "\"" +
                                    " u " + datColumns[combination.XAxis] + ":" + datColumns[combination.YAxis] + (combination.Heat == null ? "" : ":" + datColumns[(FootprintDatapoint.FootPrintEntry)combination.Heat]) +
                                    " w points linestyle " + ((counter % colorCount) + 1) + (combination.Heat == null ? "" : " palette") +
                                    " t \"" + string.Join("/", dataGroup.Key.Select(e => e.Item2)) + "\"");
                        }
                    }
                    else
                    {
                     // Plot the overall data at once
                     sw.WriteLine("\"" + singleDatFile + "\"" +
                     " u " + datColumns[combination.XAxis] + ":" + datColumns[combination.YAxis] + (combination.Heat == null ? "" : ":" + datColumns[(FootprintDatapoint.FootPrintEntry)combination.Heat]) +
                     " w points linestyle 1" + (combination.Heat == null ? "" : " palette") +
                     " t \"Overall\""); 
                    }
                }
                sw.WriteLine("reset");
                sw.WriteLine("exit");
            }
            // --> Prepare command script
            LogLine("Preparing command script ...");
            string commandScript = basename + ".cmd";
            using (StreamWriter sw = new StreamWriter(Path.Combine(OutputDirectory, commandScript)))
                sw.WriteLine("gnuplot " + plotScript);
            // Log
            Console.WriteLine("Calling plot script ...");
            // --> Execute plot script
            DataProcessor.ExecuteScript(Path.Combine(OutputDirectory, commandScript), (string msg) => { LogLine(msg); });
        }

        public void PlotFootprintsScatteredMoved(
            string basename,
            List<FootprintScatterPlotData> xyFootprintCombinations,
            List<FootprintDatapoint.FootPrintEntry> groupBy)
        {
            // --> Prepare dat file
            LogLine("Preparing dat file(s) ...");
            Dictionary<FootprintDatapoint.FootPrintEntry, int> datColumns = new Dictionary<FootprintDatapoint.FootPrintEntry, int>();
            int currentIndex = 0;
            // Build dictionary of unique columns and indices for them
            foreach (var uniqueEntry in xyFootprintCombinations
                // X axis values
                .Select(t => t.XAxis)
                // Y axis values
                .Concat(xyFootprintCombinations.Select(t => t.YAxis))
                // Heat info
                .Concat(xyFootprintCombinations.Where(e => e.Heat != null).Select(e => (FootprintDatapoint.FootPrintEntry)e.Heat))
                // We only need every entry once
                .Distinct())
                datColumns[uniqueEntry] = ++currentIndex;
            string singleDatFile = basename + ".dat";
            // Group data (if required)
            Dictionary<List<Tuple<FootprintDatapoint.FootPrintEntry, string>>, string> dataGroups =
                // Check whether we need any grouping at all
                groupBy.Any() ?
                // Make cross product of the grouping combinations
                EnumerationHelpers.CrossProduct(groupBy.Select(i => _datapoints.Select(d => new Tuple<FootprintDatapoint.FootPrintEntry, string>(i, d[i].ToString())).Distinct().ToList()).ToList())
                // Create a dictionary containing the actual tuple and the corresponding dat file name
                .ToDictionary(k => k, v => basename + string.Join("", v.Select(e => e.Item1 + e.Item2)) + ".dat") :
                // No grouping required - leave a null
                null;
            LogLine("Found " + (dataGroups != null ? dataGroups.Count : 1) + " group(s)!");
            // Write dat file(s)
            if (dataGroups != null)
            {
                // Write file per data group
                foreach (var group in dataGroups)
                {
                    using (StreamWriter sw = new StreamWriter(Path.Combine(OutputDirectory, group.Value)))
                    {
                        // Write header
                        sw.Write(IOConstants.GNU_PLOT_COMMENT_LINE.ToString() + IOConstants.GNU_PLOT_VALUE_SPLIT.ToString());
                        foreach (var entry in datColumns.OrderBy(c => c.Value))
                            sw.Write(entry.Key.ToString() + IOConstants.GNU_PLOT_VALUE_SPLIT);
                        sw.WriteLine();
                        // Write all entries
                        foreach (var footprint in _datapoints.Where(d => group.Key.All(e => (d[e.Item1].ToString()) == e.Item2)))
                        {
                            foreach (var entry in datColumns.OrderBy(c => c.Value))
                                sw.Write((Convert.ToDouble(footprint[entry.Key])).ToString(IOConstants.FORMATTER) + IOConstants.GNU_PLOT_VALUE_SPLIT);
                            sw.WriteLine();
                        }
                    }
                }
            }
            else
            {
                // Write only a single file
                using (StreamWriter sw = new StreamWriter(Path.Combine(OutputDirectory, singleDatFile)))
                {
                    // Write header
                    sw.Write(IOConstants.GNU_PLOT_COMMENT_LINE.ToString() + IOConstants.GNU_PLOT_VALUE_SPLIT.ToString());
                    foreach (var entry in datColumns.OrderBy(c => c.Value))
                        sw.Write(entry.Key.ToString() + IOConstants.GNU_PLOT_VALUE_SPLIT);
                    sw.WriteLine();
                    // Write all entries
                    foreach (var footprint in _datapoints)
                    {
                        foreach (var entry in datColumns.OrderBy(c => c.Value))
                            sw.Write((Convert.ToDouble(footprint[entry.Key])).ToString(IOConstants.FORMATTER) + IOConstants.GNU_PLOT_VALUE_SPLIT);
                        sw.WriteLine();
                    }
                }
                string filePath = Path.Combine(OutputDirectory, singleDatFile);
                var lines = File.ReadAllLines(filePath).ToList();
                var newLines = new List<string>();
                var existingCoordinates = new HashSet<string>();

                foreach (var line in lines)
                {
                        // Skip the header line
                    if (line.StartsWith(IOConstants.GNU_PLOT_COMMENT_LINE.ToString()))
                    {
                        newLines.Add(line);
                        continue;
                    }

                    var parts = line.Split(new[] { IOConstants.GNU_PLOT_VALUE_SPLIT }, StringSplitOptions.RemoveEmptyEntries);
                    var coordinate = parts[0] + " " + parts[1];

                        // Adjust coordinates if they already exist
                    while (existingCoordinates.Contains(coordinate))
                    {
                        double x = double.Parse(parts[0], CultureInfo.InvariantCulture);
                        double y = double.Parse(parts[1], CultureInfo.InvariantCulture);
                        parts[0] = (x + 0.5).ToString("G", CultureInfo.InvariantCulture);
                        parts[1] = (y + 0.5).ToString("G", CultureInfo.InvariantCulture);
                        coordinate = parts[0] + " " + parts[1];
                    }

                        // Record the coordinate
                    existingCoordinates.Add(coordinate);
                    newLines.Add(string.Join(IOConstants.GNU_PLOT_VALUE_SPLIT.ToString(), parts));
                }

                    // Write adjusted data to the same file
                File.WriteAllLines(filePath, newLines);

            }



            // --> Prepare plot script
            LogLine("Preparing plot script ...");
            string plotScript = basename + ".gp";
            using (StreamWriter sw = new StreamWriter(Path.Combine(OutputDirectory, plotScript)))
            {
                sw.WriteLine("reset");
                sw.WriteLine("# Output definition");
                sw.WriteLine("set terminal pdfcairo enhanced size 7, 3 font \"Consolas, 12\"");
                sw.WriteLine("set output \"" + basename + ".pdf\"");
                sw.WriteLine("set lmargin 13");
                sw.WriteLine("set rmargin 13");
                sw.WriteLine("# Parameters");
                sw.WriteLine("set key off");
                sw.WriteLine("set grid");
                sw.WriteLine("set style fill solid 0.75");
                string colorDefinition = DataProcessor.GenerateLineStyleScriptCodeWithPoints();
                int colorCount = colorDefinition.Length - colorDefinition.Replace(IOConstants.LINE_TERMINATOR, string.Empty).Length - 1;
                sw.WriteLine(colorDefinition);
                // Make one diagram per given combination of characteristics
                foreach (var combination in xyFootprintCombinations)
                {
                    //sw.WriteLine("set title \"" + combination.XAxis + " / " + combination.YAxis + "\"");
                    sw.WriteLine("set title \"" + combination.Heat + "\"");
                    sw.WriteLine("set xlabel \"" + combination.XAxis + "\"");
                    sw.WriteLine("set ylabel \"" + combination.YAxis + "\"");
                    sw.WriteLine("plot \\");
                    if (dataGroups != null)
                    {
                        // Make separate plots for the groups
                        int counter = 0;
                        foreach (var dataGroup in dataGroups.OrderByAlphaNumeric(g => g.Value))
                        {
                            if (++counter < dataGroups.Count)
                            {
                                sw.WriteLine("\"" + dataGroup.Value + "\"" +
                                    " u " + datColumns[combination.XAxis] + ":" + datColumns[combination.YAxis] + (combination.Heat == null ? "" : ":" + datColumns[(FootprintDatapoint.FootPrintEntry)combination.Heat]) +
                                    " w points linestyle " + ((counter % colorCount) + 1) + (combination.Heat == null ? "" : " palette") +
                                    " t \"" + string.Join("/", dataGroup.Key.Select(e => e.Item2)) + "\"" +
                                    ", \\");
                            }

                            else
                            {
                                sw.WriteLine("\"" + dataGroup.Value + "\"" +
                                    " u " + datColumns[combination.XAxis] + ":" + datColumns[combination.YAxis] + (combination.Heat == null ? "" : ":" + datColumns[(FootprintDatapoint.FootPrintEntry)combination.Heat]) +
                                    " w points linestyle " + ((counter % colorCount) + 1) + (combination.Heat == null ? "" : " palette") +
                                    " t \"" + string.Join("/", dataGroup.Key.Select(e => e.Item2)) + "\"");
                            }
                                
                        }
                    }
                    else
                    {
                        // Plot the overall data at once
                        sw.WriteLine("\"" + singleDatFile + "\"" +
                        " u " + datColumns[combination.XAxis] + ":" + datColumns[combination.YAxis] + (combination.Heat == null ? "" : ":" + datColumns[(FootprintDatapoint.FootPrintEntry)combination.Heat]) +
                        " w points linestyle 1" + (combination.Heat == null ? "" : " palette") +
                        " t \"Overall\"");
                    }
                }
                sw.WriteLine("reset");
                sw.WriteLine("exit");
            }
            // --> Prepare command script
            LogLine("Preparing command script ...");
            string commandScript = basename + ".cmd";
            using (StreamWriter sw = new StreamWriter(Path.Combine(OutputDirectory, commandScript)))
                sw.WriteLine("gnuplot " + plotScript);
            // Log
            Console.WriteLine("Calling plot script ...");
            // --> Execute plot script
            DataProcessor.ExecuteScript(Path.Combine(OutputDirectory, commandScript), (string msg) => { LogLine(msg); });
        }

        public void PlotFootprintsScatteredAvg(
            string basename,
            List<FootprintScatterPlotData> xyFootprintCombinations,
            List<FootprintDatapoint.FootPrintEntry> groupBy)
        {
            // --> Prepare dat file
            LogLine("Preparing dat file(s) ...");
            Dictionary<FootprintDatapoint.FootPrintEntry, int> datColumns = new Dictionary<FootprintDatapoint.FootPrintEntry, int>();
            int currentIndex = 0;
            // Build dictionary of unique columns and indices for them
            foreach (var uniqueEntry in xyFootprintCombinations
                // X axis values
                .Select(t => t.XAxis)
                // Y axis values
                .Concat(xyFootprintCombinations.Select(t => t.YAxis))
                // Heat info
                .Concat(xyFootprintCombinations.Where(e => e.Heat != null).Select(e => (FootprintDatapoint.FootPrintEntry)e.Heat))
                // We only need every entry once
                .Distinct())
                datColumns[uniqueEntry] = ++currentIndex;
            string singleDatFile = basename + ".dat";
            // Group data (if required)
            Dictionary<List<Tuple<FootprintDatapoint.FootPrintEntry, string>>, string> dataGroups =
                // Check whether we need any grouping at all
                groupBy.Any() ?
                // Make cross product of the grouping combinations
                EnumerationHelpers.CrossProduct(groupBy.Select(i => _datapoints.Select(d => new Tuple<FootprintDatapoint.FootPrintEntry, string>(i, d[i].ToString())).Distinct().ToList()).ToList())
                // Create a dictionary containing the actual tuple and the corresponding dat file name
                .ToDictionary(k => k, v => basename + string.Join("", v.Select(e => e.Item1 + e.Item2)) + ".dat") :
                // No grouping required - leave a null
                null;
            LogLine("Found " + (dataGroups != null ? dataGroups.Count : 1) + " group(s)!");
            // Write dat file(s)
            if (dataGroups != null)
            {
                // Write file per data group
                foreach (var group in dataGroups)
                {
                    using (StreamWriter sw = new StreamWriter(Path.Combine(OutputDirectory, group.Value)))
                    {
                        // Write header
                        sw.Write(IOConstants.GNU_PLOT_COMMENT_LINE.ToString() + IOConstants.GNU_PLOT_VALUE_SPLIT.ToString());
                        foreach (var entry in datColumns.OrderBy(c => c.Value))
                            sw.Write(entry.Key.ToString() + IOConstants.GNU_PLOT_VALUE_SPLIT);
                        sw.WriteLine();
                        // Write all entries
                        foreach (var footprint in _datapoints.Where(d => group.Key.All(e => (d[e.Item1].ToString()) == e.Item2)))
                        {
                            foreach (var entry in datColumns.OrderBy(c => c.Value))
                                sw.Write((Convert.ToDouble(footprint[entry.Key])).ToString(IOConstants.FORMATTER) + IOConstants.GNU_PLOT_VALUE_SPLIT);
                            sw.WriteLine();
                        }
                    }
                }
            }
            else
            {
                // Write only a single file
                using (StreamWriter sw = new StreamWriter(Path.Combine(OutputDirectory, singleDatFile)))
                {
                    // Write header
                    sw.Write(IOConstants.GNU_PLOT_COMMENT_LINE.ToString() + IOConstants.GNU_PLOT_VALUE_SPLIT.ToString());
                    foreach (var entry in datColumns.OrderBy(c => c.Value))
                        sw.Write(entry.Key.ToString() + IOConstants.GNU_PLOT_VALUE_SPLIT);
                    sw.WriteLine();
                    // Write all entries
                    foreach (var footprint in _datapoints)
                    {
                        foreach (var entry in datColumns.OrderBy(c => c.Value))
                            sw.Write((Convert.ToDouble(footprint[entry.Key])).ToString(IOConstants.FORMATTER) + IOConstants.GNU_PLOT_VALUE_SPLIT);
                        sw.WriteLine();
                    }
                }
                
                string filePath = Path.Combine(OutputDirectory, singleDatFile);
                var lines = File.ReadAllLines(filePath).ToList();
                var headerLines = new List<string>();
                var dataLines = new List<string>();

                // Separate header lines and data lines
                foreach (var line in lines)
                {
                    if (line.StartsWith("#"))
                    {
                        headerLines.Add(line);
                    }
                    else
                    {
                        dataLines.Add(line);
                    }
                }

                // Dictionary to aggregate data by coordinates
                var aggregatedData = new Dictionary<string, (List<double[]> values, int count)>();

                foreach (var line in dataLines)
                {
                    var parts = line.Split(new[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
                    var coordinate = parts[0] + " " + parts[1];
                    var metrics = parts.Skip(2).Select(v => double.Parse(v, CultureInfo.InvariantCulture)).ToArray();

                    if (!aggregatedData.ContainsKey(coordinate))
                    {
                        aggregatedData[coordinate] = (new List<double[]>(), 0);
                    }

                    aggregatedData[coordinate].values.Add(metrics);
                    aggregatedData[coordinate] = (aggregatedData[coordinate].values, aggregatedData[coordinate].count + 1);
                }

                // Create new lines with averaged values and counts
                var newLines = new List<string>();
                foreach (var header in headerLines)
                {
                    newLines.Add(header);
                }

                foreach (var entry in aggregatedData)
                {
                    var coordinate = entry.Key;
                    var valuesList = entry.Value.values;
                    var count = entry.Value.count;

                    var averages = new double[valuesList[0].Length];
                    for (int i = 0; i < averages.Length; i++)
                    {
                        averages[i] = valuesList.Average(v => v[i]);
                    }

                    var newLine = coordinate + " " + string.Join(" ", averages.Select(a => a.ToString(CultureInfo.InvariantCulture))) + " " + count;
                    newLines.Add(newLine);
                }

                // Write adjusted data to the same file
                File.WriteAllLines(filePath, newLines);
                

            }

            // --> Prepare plot script
            LogLine("Preparing plot script ...");
            string plotScript = basename + ".gp";
            using (StreamWriter sw = new StreamWriter(Path.Combine(OutputDirectory, plotScript)))
            {
                sw.WriteLine("reset");
                sw.WriteLine("# Output definition");
                sw.WriteLine("set terminal pdfcairo enhanced size 7, 3 font \"Consolas, 12\"");
                sw.WriteLine("set output \"" + basename + ".pdf\"");
                sw.WriteLine("set lmargin 13");
                sw.WriteLine("set rmargin 13");
                sw.WriteLine("# Parameters");
                sw.WriteLine("set key off");
                sw.WriteLine("set grid");
                sw.WriteLine("set style fill solid 0.75");
                string colorDefinition = DataProcessor.GenerateLineStyleScriptCodeWithPoints();
                int colorCount = colorDefinition.Length - colorDefinition.Replace(IOConstants.LINE_TERMINATOR, string.Empty).Length - 1;
                sw.WriteLine(colorDefinition);
                // Make one diagram per given combination of characteristics
                foreach (var combination in xyFootprintCombinations)
                {
                    //sw.WriteLine("set title \"" + combination.XAxis + " / " + combination.YAxis + "\"");
                    sw.WriteLine("set title \"" + combination.Heat + "\"");
                    sw.WriteLine("set xlabel \"" + combination.XAxis + "\"");
                    sw.WriteLine("set ylabel \"" + combination.YAxis + "\"");
                    sw.WriteLine("plot \\");
                    if (dataGroups != null)
                    {
                        // Make separate plots for the groups
                        int counter = 0;
                        foreach (var dataGroup in dataGroups.OrderByAlphaNumeric(g => g.Value))
                        {
                            if (++counter < dataGroups.Count)
                            {
                                sw.WriteLine("\"" + dataGroup.Value + "\"" +
                                    " u " + datColumns[combination.XAxis] + ":" + datColumns[combination.YAxis] + (combination.Heat == null ? "" : ":" + datColumns[(FootprintDatapoint.FootPrintEntry)combination.Heat]) +
                                    " w points linestyle " + ((counter % colorCount) + 1) + (combination.Heat == null ? "" : " palette") +
                                    " t \"" + string.Join("/", dataGroup.Key.Select(e => e.Item2)) + "\"" +
                                    ", \\");
                            }
                            else
                            {
                                sw.WriteLine("\"" + dataGroup.Value + "\"" +
                                    " u " + datColumns[combination.XAxis] + ":" + datColumns[combination.YAxis] + (combination.Heat == null ? "" : ":" + datColumns[(FootprintDatapoint.FootPrintEntry)combination.Heat]) +
                                    " w points linestyle " + ((counter % colorCount) + 1) + (combination.Heat == null ? "" : " palette") +
                                    " t \"" + string.Join("/", dataGroup.Key.Select(e => e.Item2)) + "\"");
                            }
                                
                        }
                    }
                    else
                    {

                        // Plot the overall data at once
                        sw.WriteLine("\"" + singleDatFile + "\"" +
                        " u " + datColumns[combination.XAxis] + ":" + datColumns[combination.YAxis] + (combination.Heat == null ? "" : ":" + datColumns[(FootprintDatapoint.FootPrintEntry)combination.Heat]) +
                        " w points linestyle 7" + (combination.Heat == null ? "" : " palette") +
                        " t \"Overall\"");
                        //" w points pointtype 7 pointsize variable palette t \"Overall\"");
                            
                    }
                }
                sw.WriteLine("reset");
                sw.WriteLine("exit");
            }
            // --> Prepare command script
            LogLine("Preparing command script ...");
            string commandScript = basename + ".cmd";
            using (StreamWriter sw = new StreamWriter(Path.Combine(OutputDirectory, commandScript)))
                sw.WriteLine("gnuplot " + plotScript);
            // Log
            Console.WriteLine("Calling plot script ...");
            // --> Execute plot script
            DataProcessor.ExecuteScript(Path.Combine(OutputDirectory, commandScript), (string msg) => { LogLine(msg); });
        }
    }
}
