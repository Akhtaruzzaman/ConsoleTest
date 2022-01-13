using System;

namespace EventLearn
{
    class Program
    {
        static void Main(string[] args)
        {
            var tower = new ClockTower();
            var person = new Person("Raju", tower);
            var person2 = new Person("Korim", tower);

            tower.ChimeFivePM();
            tower.ChimeSixAM();
            Console.ReadKey();
        }
    }
    public class ClockTowerEventArgs : EventArgs
    {
        public int Time { get; set; }
    }
    public class Person
    {
        private readonly string name;
        private readonly ClockTower clockTower;

        public Person(string name, ClockTower clockTower)
        {
            this.name = name;
            this.clockTower = clockTower;

            this.clockTower.Chime += (object sender, ClockTowerEventArgs args) =>
            {
                Console.WriteLine("{0} heard the chime time", this.name);
                switch (args.Time)
                {
                    case 6: Console.WriteLine("{0} is waking up", this.name);
                        break;
                    case 17: Console.WriteLine("{0} is going home", this.name);
                        break;

                }
            };
        }
    }

    public delegate void ChimeEventHandler(object sender, ClockTowerEventArgs args);
    public class ClockTower
    {
        public event ChimeEventHandler Chime;
        public void ChimeFivePM()
        {
            Chime(this, new ClockTowerEventArgs { Time = 17 });
        }
        public void ChimeSixAM()
        {
            Chime(this, new ClockTowerEventArgs { Time = 6 });
        }
    }
}
