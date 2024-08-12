using RAWSimO.Core;
using RAWSimO.Core.Configurations;
using RAWSimO.Core.Generator;
using RAWSimO.Core.IO;
using RAWSimO.Core.Randomization;
using RAWSimO.Playground.Generators;
using RAWSimO.Playground.Tests;
using RAWSimO.Toolbox;
using RAWSimO.DataPreparation;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Xml.Serialization;
using System.ComponentModel.Design;
using System.Reflection.PortableExecutable;
using RAWSimO.Core.Metrics;
using RAWSimO.Core.Statistics;

namespace RAWSimO.Playground
{
    class Program
    {
        static void Main(string[] args)
        {
            // If arguments given in the right length handle the jenkins call
            if (args.Length == JenkinsHandler.CliArgs.Length)
            {
                JenkinsHandler.HandleJenkinsCall(args);
                return;
            }
            // Choose option
            Console.WriteLine(">>> Choose option: ");
            Console.WriteLine("1: ExecuteInstance");
            Console.WriteLine("2: ExecuteDirectory");
            Console.WriteLine("3: LoopExecuteDirectoryAllDemands");
            Console.WriteLine("4: LoopExecuteDirectoryPerDemand");
            Console.WriteLine("5: DataPreparation");
            //Console.WriteLine("4: SendResourcesToCluster");
            //Console.WriteLine("5: FetchResultsFromCluster");
            //Console.WriteLine("6: FetchOutputFilesFromCluster");
            Console.WriteLine("6: EVERYTHING: Execute and DataPrep and Scatterplot");
            //Console.WriteLine("7: GenerateMaTiInstances");
            //Console.WriteLine("8: GenerateMuControlConfigs");
            //Console.WriteLine("9: GenerateMuSettingConfigs");
            Console.WriteLine("0: Experimental");
            char optionKey = Console.ReadKey().KeyChar; Console.WriteLine();
            switch (optionKey)
            {

                case '1': { ExecuteInstance(); } break;
                case '2': { ExecuteInstances(); } break;
                case '3': { LoopExecuteDirectory(); }break;
                case '4':
                    {
                        LoopExecuteDirectoryPerDemand();
                        /* ClusterHelper.SendBinDirToCluster(); TODO skip bin dir for now - use hg clone repo instead */
                        //ClusterHelper.SendScriptDirToCluster();
                        //ClusterHelper.SendInstanceDirToCluster();
                        //ClusterHelper.SendResourceDirToCluster();
                    }
                    break;
                case '5': { DataPreparation();
                        //ClusterHelper.FetchResultsFromCluster();
                        } break;
                case '6': { ExecuteAndDataPrepWithScatter();
                        } break;
                //case '6': { ClusterHelper.FetchOutputFilesFromCluster(); } break;
                case '7': { InstanceGenerators.GenerateMaTiInstances(); } break;
                case '8': { ConfigGenerators.GenerateRotterdamControllers(); } break;
                case '9': { SettingGenerator.GenerateRotterdamMark2Set(); } break;
                case '0': { Experimental(); } break;
                default:
                    break;
            }
            Console.WriteLine(".Fin.");
            Console.ReadLine();
        }

        /// <summary>
        /// Asks the user for the instance and configuration to execute.
        /// </summary>
        static void ExecuteInstance()
        {
            // Choose base directory
            Console.WriteLine("Choose directory:");
            string[] directories = Directory.EnumerateDirectories(Path.Combine("..", "..", "..", "..", "Material", "Instances")).ToArray();
            for (int i = 0; i < directories.Length; i++)
            {
                Console.WriteLine(i + ": " + Path.GetFileName(directories[i]));
            }
            int directoryID = 0;
            try
            {
                // Get the ID of the instance
                directoryID = int.Parse(Console.ReadLine());
            }
            catch (FormatException)
            {
                Console.WriteLine("Error: Could not find a directory with that ID!");
                return;
            }
            // Choose instance
            string[] instances = Directory.EnumerateFiles(directories[directoryID], "*.xinst").Concat(Directory.EnumerateFiles(directories[directoryID], "*.xlayo")).ToArray();
            Console.WriteLine("Choose instance:");
            for (int i = 0; i < instances.Length; i++)
            {
                Console.WriteLine(i + ": " + Path.GetFileName(instances[i]));
            }
            int instanceID = 0;
            try
            {
                // Get the ID of the instance
                instanceID = int.Parse(Console.ReadLine());
            }
            catch (FormatException)
            {
                Console.WriteLine("Error: Could not find instance with that ID!");
                return;
            }
            // Choose configuration
            string[] settings = Directory.EnumerateFiles(directories[directoryID], "*.xsett").ToArray();
            Console.WriteLine("Choose setting:");
            for (int i = 0; i < settings.Length; i++)
            {
                Console.WriteLine(i + ": " + Path.GetFileName(settings[i]));
            }
            int settingID = 0;
            try
            {
                // Get the ID of the config
                settingID = int.Parse(Console.ReadLine());
            }
            catch (FormatException)
            {
                Console.WriteLine("Error: Could not find configuration with that ID!");
                return;
            }
            // Choose configuration
            string[] configurations = Directory.EnumerateFiles(directories[directoryID], "*.xconf").ToArray();
            Console.WriteLine("Choose configuration:");
            for (int i = 0; i < configurations.Length; i++)
            {
                Console.WriteLine(i + ": " + Path.GetFileName(configurations[i]));
            }
            int configID = 0;
            try
            {
                // Get the ID of the config
                configID = int.Parse(Console.ReadLine());
            }
            catch (FormatException)
            {
                Console.WriteLine("Error: Could not find configuration with that ID!");
                return;
            }
            // Choose seed
            Console.WriteLine("Choose seed:");
            int seed = 0;
            try
            {
                // Get the seed
                seed = int.Parse(Console.ReadLine());
            }
            catch (FormatException)
            {
                Console.WriteLine("Error: Could not parse the seed!");
                return;
            }
            // Parse the instance
            Console.WriteLine("Calling wrapped RAWSimO.CLI ...");
            string[] cliArgs = { instances[instanceID], settings[settingID], configurations[configID], directories[directoryID] + "/Results", seed.ToString() };
            RAWSimO.CLI.Program.Main(cliArgs);
            Console.WriteLine("Returned from RAWSimO.CLI !");
        }

        /// <summary>
        /// Asks a user for a directory and a seed-count then executes all combinations that can be obtained.
        /// </summary>
        static void ExecuteInstances(string tag = null, uint seedCount = 0, string directory = null)
        {
            // Ask for the directory to execute
            if (string.IsNullOrEmpty(directory))
            {
                Console.WriteLine("Choose directory:");
                string[] directories = Directory.EnumerateDirectories(Path.Combine("..", "..", "..", "..", "Material", "Instances")).ToArray();
                for (int i = 0; i < directories.Length; i++)
                {
                    Console.WriteLine(i + ": " + Path.GetFileName(directories[i]));
                }
                int directoryID = 0;
                try
                {
                    // Get the ID of the instance
                    directoryID = int.Parse(Console.ReadLine());
                    directory = directories[directoryID];
                }
                catch (FormatException)
                {
                    Console.WriteLine("Error: Could not find a directory with that ID!");
                    return;
                }
            }
            
            // Ask for seed count
            if (seedCount == 0)
            {
                Console.WriteLine("Number of seeds to execute [1]:");
                try { seedCount = uint.Parse(Console.ReadLine()); }
                catch (FormatException) { }

            }
            
            // Ask for degree of parallelism
            uint paraDeg = 1;
            //Console.WriteLine("Degree of parallelism [1]:");
            //try { paraDeg = uint.Parse(Console.ReadLine()); }
            //catch (FormatException) { }
            
            // Get all files (except for layout, only use instance)
            //List<string> instances = Directory.EnumerateFiles(directory, "*.xinst").Concat(Directory.EnumerateFiles(directory, "*.xlayo")).ToList();

            List<string> instances = Directory.EnumerateFiles(directory, "*.xinst").ToList();
            List<string> settings = Directory.EnumerateFiles(directory, "*.xsett").ToList();
            List<string> configs = Directory.EnumerateFiles(directory, "*.xconf").ToList();
            List<string> seeds = Enumerable.Range(1, (int)seedCount).Select(s => s.ToString()).ToList();
            var combinations = EnumerationHelpers.CrossProduct(new List<List<string>>() { instances, settings, configs, seeds }).ToList();
            int counter = 0;
            if (paraDeg < 2)
            {
                foreach (var combination in combinations)
                {
                    // Execute the next one
                    Console.WriteLine("######################################");
                    Console.WriteLine("---> Executing combination " + (++counter).ToString() + " / " + combinations.Count());
                    Console.WriteLine("######################################");
                    Console.WriteLine("--> Calling wrapped RAWSimO.CLI ...");
                    //string[] cliArgs = { combination[0], combination[1], combination[2], directory + "/Results", combination[3] };
                    //add tag as last argument
                    string[] cliArgs;
                    if (tag == null)
                    {
                        cliArgs = new string[] { combination[0], combination[1], combination[2], directory, combination[3]};
                    }
                    else
                    {
                        cliArgs = new string[] { combination[0], combination[1], combination[2], directory, combination[3], tag};
                    }
                    RAWSimO.CLI.Program.Main(cliArgs);
                    Console.WriteLine("--> Returned from RAWSimO.CLI !");
                    Console.WriteLine("######################################");
                }
            }
            else
            {
                // Prepare
                Console.WriteLine("######################################");
                Console.WriteLine("---> Executing " + combinations.Count + " combinations in parallel");
                Console.WriteLine("######################################");
                string programName = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "RAWSimO.CLI.exe");
                int total = combinations.Count; int completed = 0; int started = 0;
                // Store last lines of all jobs and periodically log them for feedback
                List<string> lastLines = new List<string>();
                Action log = () =>
                {
                    Console.WriteLine("Progress: " + started + "/" + completed + "/" + total + " (started/completed/total)");
                    lock (lastLines)
                        for (int i = 0; i < lastLines.Count; i++)
                            Console.WriteLine(i + ": " + lastLines[i]);
                };
                Timer logTimer = new Timer(new TimerCallback((object unused) => { log(); }), null, 2000, 5000);
                // Execute jobs in parallel (limited by the given degree of parallelism)
                Parallel.ForEach(combinations, new ParallelOptions() { MaxDegreeOfParallelism = (int)paraDeg }, (List<string> combination) =>
                {
                    // Prepare sub-process
                    string arguments = combination[0] + " " + combination[1] + " " + combination[2] + " " + directory + " " + combination[3];
                    ProcessStartInfo startInfo = new ProcessStartInfo(programName, arguments) { };
                    startInfo.UseShellExecute = false;
                    startInfo.RedirectStandardOutput = true;
                    int index = Interlocked.Increment(ref started) - 1;
                    lock (lastLines)
                        lastLines.Add("<null>");
                    Process process = new Process() { StartInfo = startInfo };
                    process.OutputDataReceived += (object sender, DataReceivedEventArgs e) =>
                    {
                        if (!string.IsNullOrWhiteSpace(e.Data))
                            lastLines[index] = e.Data;
                    };
                    // Start the job
                    process.Start();
                    process.BeginOutputReadLine();
                    // Wait for the job to finish
                    process.WaitForExit();
                    Interlocked.Increment(ref completed);
                });
                // Finish logging
                logTimer.Change(Timeout.Infinite, Timeout.Infinite);
                log();
            }
        }

        static void LoopExecuteDirectory()
        {
            // choose directory
            Console.WriteLine("Choose directory:");
            string[] directories = Directory.EnumerateDirectories(Path.Combine("..", "..", "..", "..", "Material", "Instances")).ToArray();
            for (int i = 0; i < directories.Length; i++)
            {
                Console.WriteLine(i + ": " + Path.GetFileName(directories[i]));
            }
            int directoryID = 0;
            string directory = "";
            try
            {
                // Get the ID of the instance
                directoryID = int.Parse(Console.ReadLine());
                directory = directories[directoryID];
            }
            catch (FormatException)
            {
                Console.WriteLine("Error: Could not find a directory with that ID!");
                return;
            }
            // Choose instance
            string[] instances = Directory.EnumerateFiles(directories[directoryID], "*.xinst").Concat(Directory.EnumerateFiles(directories[directoryID], "*.xlayo")).ToArray();
            Console.WriteLine("Choose instance:");
            for (int i = 0; i < instances.Length; i++)
            {
                Console.WriteLine(i + ": " + Path.GetFileName(instances[i]));
            }
            int instanceID = 0;
            try
            {
                // Get the ID of the instance
                instanceID = int.Parse(Console.ReadLine());
            }
            catch (FormatException)
            {
                Console.WriteLine("Error: Could not find instance with that ID!");
                return;
            }
            // Choose setting
            string[] settings = Directory.EnumerateFiles(directories[directoryID], "*.xsett").ToArray();
            Console.WriteLine("Choose setting:");
            for (int i = 0; i < settings.Length; i++)
            {
                Console.WriteLine(i + ": " + Path.GetFileName(settings[i]));
            }
            int settingID = 0;
            try
            {
                // Get the ID of the setting
                settingID = int.Parse(Console.ReadLine());
            }
            catch (FormatException)
            {
                Console.WriteLine("Error: Could not find configuration with that ID!");
                return;
            }
            // Choose configuration
            string[] configurations = Directory.EnumerateFiles(directories[directoryID], "*.xconf").ToArray();
            Console.WriteLine("Choose configuration:");
            for (int i = 0; i < configurations.Length; i++)
            {
                Console.WriteLine(i + ": " + Path.GetFileName(configurations[i]));
            }
            int configID = 0;
            try
            {
                // Get the ID of the config
                configID = int.Parse(Console.ReadLine());
            }
            catch (FormatException)
            {
                Console.WriteLine("Error: Could not find configuration with that ID!");
                return;
            }
            // choose seeds
            uint seedCount = 1;
            Console.WriteLine("Number of seeds to execute [1]:");
            try 
            { 
                seedCount = uint.Parse(Console.ReadLine()); 
            }
            catch (FormatException) 
            {
                Console.WriteLine("Error: aahhh seeds error something!");
                return;
            }
            List<string> seeds = Enumerable.Range(1, (int)seedCount).Select(s => s.ToString()).ToList();
            // choose tag
            Console.WriteLine("Tag files with weight, demand or both (w/d/b)?");
            string use_tag = Console.ReadLine();
            string tag = "";

            //  TODO: ask console which folder to use
            //check correct file
            string folderPath = @"C:\Users\pnl0j327\PycharmProjects\pythonProject1\write file name here\";
            string csvFilePath = Path.Combine(folderPath, "filelist.csv");
            var files = Directory.GetFiles(folderPath)
                .Where(f => Path.GetFileName(f).StartsWith("D") &&
                            Path.GetFileName(f)[2] == '_' &&
                            Path.GetExtension(f).Equals(".csv", StringComparison.OrdinalIgnoreCase))
                .ToList();

            using (StreamWriter writer = new StreamWriter(csvFilePath))
            {
                foreach (var file in files)
                {
                    writer.WriteLine(file);
                }
            }
            if (File.Exists(csvFilePath))
            {
                // Read all lines from the CSV file
                var lines = File.ReadAllLines(csvFilePath).ToList();

                while (lines.Any())
                {
                    // get tag from file name
                    string firstLine = lines.First();
                    string fileName = Path.GetFileName(firstLine);
                    string[] parts = fileName.Split('_');
                    if (use_tag == "w")
                    {
                        tag = parts.Length >= 3 ? parts[1] : "";
                    }
                    else if (use_tag == "d")
                    {
                        tag = parts.Length >= 3 ? parts[0] : "";
                    }
                    else if (use_tag == "b")
                    {
                        tag = parts.Length >= 3 ? parts[0] + parts[1] : "";
                    }
                    
                    foreach (var seed in seeds)
                    {
                        Console.WriteLine($"Processing file with seed {seed} of {seeds}, tag {tag} and in directory {directory}");
                        Console.WriteLine("Calling wrapped RAWSimO.CLI ...");
                        string[] cliArgs = { instances[instanceID], settings[settingID], configurations[configID], directory, seed.ToString(), tag};
                        RAWSimO.CLI.Program.Main(cliArgs);
                        Console.WriteLine("Returned from RAWSimO.CLI !");  
                    }

                    lines.RemoveAt(0);
                    File.WriteAllLines(csvFilePath, lines);
                }
            }

        }

        static void LoopExecuteDirectoryPerDemand()
        {
            // choose demand
            Console.WriteLine("Use all demand scenarios (y/n)? ('n' is just one)");
            string use_demand = Console.ReadLine();

            int directoryID = 0;
            string[] directories = Directory.EnumerateDirectories(Path.Combine("..", "..", "..", "..", "Material", "Instances", "10.Weighted30min Demand Gall")).ToArray();
            //directory = directories[directoryID];

            // choose seeds
            uint seedCount = 1;
            Console.WriteLine("Number of seeds to execute [1]:");
            try
            {
                seedCount = uint.Parse(Console.ReadLine());
            }
            catch (FormatException)
            {
                Console.WriteLine("Error: aahhh seeds error something!");
                return;
            }


            //use all demand scenarios
            if (use_demand == "y")
            {
                //choose directory
                foreach (string directory in directories)
                {
                    RunDemandLoop(directory, seedCount);
                }

            }
            //use one demand scenario
            else if (use_demand == "n")
            {
                // choose directory
                Console.WriteLine("Choose demand:");
                for (int i = 0; i < directories.Length; i++)
                {
                    Console.WriteLine(i + ": " + Path.GetFileName(directories[i]));
                }
                try
                {
                    // Get the ID of the instance
                    directoryID = int.Parse(Console.ReadLine());
                    RunDemandLoop(directories[directoryID], seedCount);
                }
                catch (FormatException)
                {
                    Console.WriteLine("Error: Could not find a directory with that ID!");
                    return;
                }
            }
        }
        //run demand loop
        static void RunDemandLoop(string chosen_directory, uint seedCount)
        {
            string[] instances = Array.Empty<string>();
            int instanceID = 0;
            string[] settings = Array.Empty<string>();
            int settingID = 0;
            string[] configurations = Array.Empty<string>();
            int configID = 0;

            instances = Directory.EnumerateFiles(chosen_directory, "*.xinst").ToArray();
            //pick settings
            settings = Directory.EnumerateFiles(chosen_directory, "*.xsett").ToArray();
            //pick configurations
            configurations = Directory.EnumerateFiles(chosen_directory, "*.xconf").ToArray();

            List<string> seeds = Enumerable.Range(1, (int)seedCount).Select(s => s.ToString()).ToList();

            string folderPath = @"C:\Users\pnl0j327\PycharmProjects\pythonProject1\Gall_step12_S100_d1000_T120";
            string csvFilePath = Path.Combine(folderPath, "filelist.csv");
            string demand_name = Path.GetFileName(chosen_directory);
            var files = Directory.GetFiles(folderPath)
                .Where(f => Path.GetFileName(f).StartsWith(demand_name) &&
                            Path.GetFileName(f)[2] == '_' &&
                            Path.GetExtension(f).Equals(".csv", StringComparison.OrdinalIgnoreCase))
                .ToList();
            using (StreamWriter writer = new StreamWriter(csvFilePath))
            {
                foreach (var file in files)
                {
                    writer.WriteLine(file);
                }
            }
            if (File.Exists(csvFilePath))
            {
                // Read all lines from the CSV file
                var lines = File.ReadAllLines(csvFilePath).ToList();

                while (lines.Any())
                {
                    // get tag from file name
                    string firstLine = lines.First();
                    string fileName = Path.GetFileNameWithoutExtension(firstLine);
                    string[] parts = fileName.Split('_');
                    string part1 = parts[1].Trim('[', ']');
                    string part2 = parts[3].Trim('[', ']');
                    string tag = $"{part1}, {part2}";

                    foreach (var seed in seeds)
                    {
                        Console.WriteLine($"Processing file with seed {seed}, tag {tag} and in directory {chosen_directory}");
                        Console.WriteLine("Calling wrapped RAWSimO.CLI ...");
                        string[] cliArgs = { instances[instanceID], settings[settingID], configurations[configID], chosen_directory, seed.ToString(), tag };
                        RAWSimO.CLI.Program.Main(cliArgs);
                        Console.WriteLine("Returned from RAWSimO.CLI !");
                    }

                    lines.RemoveAt(0);
                    File.WriteAllLines(csvFilePath, lines);
                }
            }
        }
    

        static void ExecuteAndDataPrepWithScatter()
        {
            
            string[] directories = Directory.EnumerateDirectories(Path.Combine("..", "..", "..", "..", "Material", "Instances", "10.Weighted30min Demand Gall")).ToArray();

            uint seedCount = 1;
            Console.WriteLine("Number of seeds to execute [1]:");
            try
            {
                seedCount = uint.Parse(Console.ReadLine());
            }
            catch (FormatException)
            {
                Console.WriteLine("Error: aahhh seeds error something!");
                return;
            }
            DataProcessor preparer = new DataProcessor();
            foreach (string directory in directories)
            {
                //First LoopExecuteDirectoryPerDemand
                RunDemandLoop(directory, seedCount);
                //Second DataPrep
                preparer.PrepareOnlyFootprints(directory);
                //Third Scatterplot
                string path = Path.Combine(directory, "footprints.csv");
                FootprintScatterProcessor scatterplotProcessor = new FootprintScatterProcessor(path);
                scatterplotProcessor.ReadFootprintData();
                //scatterplotProcessor.PlotFootprintsScattered("scatterplotsungrouped", FootprintScatterProcessor.DEFAULT_UNGROUPED_SCATTERPLOT_DATA, new List<FootprintDatapoint.FootPrintEntry>());
                //scatterplotProcessor.PlotFootprintsScatteredMoved("moved_heatedscatterplots", FootprintScatterProcessor.DEFAULT_TAG_BASED_SCATTERPLOT_DATA, new List<FootprintDatapoint.FootPrintEntry>());
                scatterplotProcessor.PlotFootprintsScattered("heatedscatterplots", FootprintScatterProcessor.DEFAULT_TAG_BASED_SCATTERPLOT_DATA, new List<FootprintDatapoint.FootPrintEntry>());
                scatterplotProcessor.PlotFootprintsScatteredMoved("moved_heatedscatterplots_weight", FootprintScatterProcessor.DEFAULT_TAG_BASED_W_SCATTERPLOT_DATA, new List<FootprintDatapoint.FootPrintEntry>());
                scatterplotProcessor.PlotFootprintsScatteredMoved("moved_heatedscatterplots_distr", FootprintScatterProcessor.DEFAULT_TAG_BASED_DISTR_SCATTERPLOT_DATA, new List<FootprintDatapoint.FootPrintEntry>());
                scatterplotProcessor.PlotFootprintsScatteredAvg("avg_heatedscatterplots_weight", FootprintScatterProcessor.DEFAULT_TAG_BASED_W_SCATTERPLOT_DATA, new List<FootprintDatapoint.FootPrintEntry>());
                scatterplotProcessor.PlotFootprintsScatteredAvg("avg_heatedscatterplots_distr", FootprintScatterProcessor.DEFAULT_TAG_BASED_DISTR_SCATTERPLOT_DATA, new List<FootprintDatapoint.FootPrintEntry>());
                //scatterplotProcessor.PlotFootprintsScattered("avgheatedscatterplots", FootprintScatterProcessor.DEFAULT_TAG_BASED_SCATTERPLOT_DATA, new List<FootprintDatapoint.FootPrintEntry>());
                //foreach (var grouping in FootprintScatterProcessor.DEFAULT_GROUPINGS)
                //{
                //    Console.WriteLine("Generating scatterplots for grouping by " + string.Join("/", grouping.Item1) + " ...");
                //    scatterplotProcessor.PlotFootprintsScattered(grouping.Item2, FootprintScatterProcessor.DEFAULT_GROUPINGS_SCATTERPLOT_DATA, grouping.Item1);
                //}

            }



        }
        /// <summary>
        /// Used to test stuff. Change the interiors of the method as often as you like. Do not put anything meaningful in here.
        /// </summary>
        public static void Experimental()
        {
            // Insert a test from RAWSimO.Playground.Tests or similar calls here
            //SolverTests.TestSolverBasic();
            //MDPLPConverter.RoundModels(Directory.GetCurrentDirectory());
            //ConfigGenerators.GenerateLenaKSet();
            //ConfigGenerators.GenerateRepositioningSet3();
            // Choose option
            Console.WriteLine(">>> Choose option: ");
            Console.WriteLine("1: Generate phase 1 configs");
            Console.WriteLine("2: Generate phase 2 settings");
            char optionKey = Console.ReadKey().KeyChar; Console.WriteLine();
            switch (optionKey)
            {
                case '1': { ConfigGenerators.GenerateRotterdamControllers(); } break;
                case '2': { ConfigGenerators.GenerateRotterdamPhase2Settings(); } break;
                default: break;
            }
        }

        public static void DataPreparation()
        {
            //without arguments it goes to the options menu of DataPreparation
            //optional to add a way to pass arguments to directly create a scatterplot (lateron)
            RAWSimO.DataPreparation.Program.Main(new string[0]);    
        }
    }
}

