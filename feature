using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace BL
{

    public class Feature : Car
    {
        internal Feature(string name, int rating, float cost)
        {
            this._name = name;
            this._rating = rating;
            this._cost = cost;
        }

        internal string _name;

        public string Name
        {
            get { return _name; }
        }

        internal int _rating;

        public int Rating
        {
            get
            {
                return _rating;
            }
        }

        internal float _cost;

        public float Cost
        {
            get
            {
                return _cost;
            }
        }

        public virtual float Install()
        {
            Console.WriteLine("Base installing Feature of type: {0}.\nName of Feature: {1}", this.GetType(), this.Name);
            Thread.Sleep(200);

            return Cost;
        }

        public int CompareTo(Object obj)
        {
            if (obj == null) return 1;
            Feature otherObj = obj as Feature;
            if (otherObj == null || otherObj.GetType() != this.GetType())
                return 1;
            return this.Rating.CompareTo(otherObj.Rating);
        }
    }

    public class FuelInjection : Feature
    {
        public FuelInjection(string name, int rating, float cost) : base(name, rating, cost) { }

        private static FuelInjection _fuelJet;
        public static FuelInjection FuelJet
        {
            get
            {
                if (_fuelJet == null)
                {
                    _fuelJet = new FuelInjection("FuelJet1", 4, 3000);
                }
                return _fuelJet;
            }
        }


        private static FuelInjection _ninjet;

        public static FuelInjection Ninjet
        {
            get
            {
                if (_ninjet == null)
                {
                    _ninjet = new FuelInjection("NinJet2", 17, 9000);
                }
                return _ninjet;
            }
        }

        public override float Install()
        {
            Console.WriteLine("Adding current specific feature {0}...", this.Name);
            Thread.Sleep(400);
            //DO STUFF
            return base.Install();
        }


    }



    public class CruiseControl : Feature
    {
        public CruiseControl(string name, int rating, float cost) : base(name, rating, cost) { }

        private static CruiseControl _gCruise;
        public static CruiseControl GCruise
        {
            get
            {
                if (_gCruise == null)
                {
                    _gCruise = new CruiseControl("G.Cruise", 7, 1000);
                }
                return _gCruise;
            }
        }


        private static CruiseControl _xCruise;
        public static CruiseControl XCruise
        {
            get
            {
                if (_xCruise == null)
                {
                    _xCruise = new CruiseControl("X.Cruise", 15, 3000);
                }
                return _xCruise;
            }
        }

        public override float Install()
        {
            Console.WriteLine("Adding current specific feature {0}...", this.Name);
            Thread.Sleep(500);
            //DO STUFF
            return base.Install();
        }


    }


}
