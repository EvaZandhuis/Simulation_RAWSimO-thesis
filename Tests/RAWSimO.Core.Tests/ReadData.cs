using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RAWSimO.Core.Tests
{
    public class ReadData
    {
        public static List<PodItem> PodContentData { get; }

        static ReadData()
        {
            PodContentData = new List<PodItem>();

            string csvFilePath = "C:\\Users\\pnl0j327\\PycharmProjects\\pythonProject1\\TestData.csv";

            using (StreamReader reader = new StreamReader(csvFilePath))
            {
                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                    string[] values = line.Split(',');

                    // Assuming the CSV file has three columns: podIndex, skuIndex, count
                    if (values.Length >= 3)
                    {
                        string podIndex = values[0];
                        string skuIndex = values[1];
                        string skucount = values[2];

                        // Create a PodItem object and add it to the list
                        PodContentData.Add(new PodItem(podIndex, skuIndex, skucount));
                    }
                }
            }
        }
    }

    public class PodItem
    {
        public string PodIndex { get; }
        public string SkuIndex { get; }
        public string SkuCount { get; }

        public PodItem(string podIndex, string skuIndex, string skuCount)
        {
            PodIndex = podIndex;
            SkuIndex = skuIndex;
            SkuCount = skuCount;
        }
    }
}


