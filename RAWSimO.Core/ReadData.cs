using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RAWSimO.Core
{
    public class ReadData
    {
        public static List<PodItem> PodContentData { get; }
        public static int TotalSkuCount { get; private set; }
        public static Dictionary<int, int> CapacityUsedPerPod { get; }

        static ReadData()
        {
            PodContentData = new List<PodItem>();
            TotalSkuCount = 0;
            CapacityUsedPerPod = new Dictionary<int, int>();

            string csvFilePath = "C:\\Users\\pnl0j327\\PycharmProjects\\pythonProject1\\large base scenario.csv";

            using (StreamReader reader = new StreamReader(csvFilePath))
            {
                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                    string[] values = line.Split(',');

                    // Assuming the CSV file has three columns: podIndex, skuIndex, skuCount
                    if (values.Length >= 3)
                    {
                        if (int.TryParse(values[0], out int podIndex) &&
                            int.TryParse(values[1], out int skuIndex) &&
                            int.TryParse(values[2], out int skuCount))
                        {
                            // Create a PodItem object and add it to the list
                            PodContentData.Add(new PodItem(podIndex, skuIndex, skuCount));

                            // Increment the total SKU count
                            TotalSkuCount += skuCount;

                            if (CapacityUsedPerPod.ContainsKey(podIndex))
                                CapacityUsedPerPod[podIndex] += skuCount;
                            else
                                CapacityUsedPerPod[podIndex] = skuCount;

                        }  
                    }
                }
            }
        }
    }

    public class PodItem
    {
        public int PodIndex { get; }
        public int SkuIndex { get; }
        public int SkuCount { get; }

        public PodItem(int podIndex, int skuIndex, int skuCount)
        {
            PodIndex = podIndex;
            SkuIndex = skuIndex;
            SkuCount = skuCount;
        }
    }

}


    
    



