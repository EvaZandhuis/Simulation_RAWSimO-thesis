using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text;
using Microsoft.VisualStudio.TestPlatform.CommunicationUtilities.Resources;
using RAWSimO.Core.Control;
using RAWSimO.Core.Info;
using RAWSimO.Core.IO;
using RAWSimO.Core.Management;
using RAWSimO.Core.Randomization;
using Xunit;

namespace RAWSimO.Core.Tests
{
    public class FileTests
    {
        /// <summary>
        /// Read and prepare a simulation instance to run.
        /// </summary>
        /// <param name="layout">Path to the layout file.</param>
        /// <param name="setting">Path to the setting file.</param>
        /// <param name="control">Path to the control file.</param>
        /// <param name="seed">The randomizer seed.</param>
        /// <returns>The instance ready to be executed.</returns>
        public static Instance ReadInstance(string layout, string setting, string control, int seed)
        {
            Action<string> logAction = Console.WriteLine;
            var instance = InstanceIO.ReadInstance(layout, setting, control, logAction: logAction);
            instance.SettingConfig.LogAction = logAction;
            instance.SettingConfig.Seed = seed;
            instance.Randomizer = new RandomizerSimple(seed);
            return instance;
        }

        /// <summary>
        /// Executes full simulation runs for pre-defined instance files.
        /// </summary>
        [Fact]
        public static void TestFiles()
        {
            // Define folder path
            string folderPath = "C:\\Users\\pnl0j327\\RAWSim-O\\RAWSim-O-main\\Material\\Instances\\Eva";

            // Define tests (each test is the base filename of the test files - .xlayo, .xsett, .xconf, .golden)
            var tests = new List<string>
            {
                "TestEva"
            };

            // Run all tests
            foreach (var test in tests)
            {
                var instance = ReadInstance(Path.Combine(folderPath, $"{test}.xlayo"),
                                                        Path.Combine(folderPath, $"{test}.xsett"),
                                                        Path.Combine(folderPath, $"{test}.xconf"), 0);

                SimulationExecutor.Execute(instance);
                /**
                Console.WriteLine("output of " + test);

                var lines = new List<string>();
                instance.PrintStatistics(s => lines.AddRange(s.Split(Environment.NewLine)));

                foreach (var line in lines)
                {
                    Console.WriteLine(line);
                }

                var stats = string.Join(Environment.NewLine, lines.Where(s => s.StartsWith("StatOverall")));
                var golden = File.ReadAllText($"Resources/{test}.golden").Trim();
                ///Assert.Equal(golden, stats);
                **/
            }
        }
    }
}