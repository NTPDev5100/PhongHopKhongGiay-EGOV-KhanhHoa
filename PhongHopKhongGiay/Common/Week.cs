using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;
namespace PhongHopKhongGiay
{
    public class Week
    {
        public static string ConvertDay2VN(DayOfWeek day)
        {
            string re = "";
            switch (day)
            {
                case DayOfWeek.Monday:
                    re = "Thứ 2";
                    break;
                case DayOfWeek.Tuesday:
                    re = "Thứ 3";
                    break;
                case DayOfWeek.Wednesday:
                    re = "Thứ 4";
                    break;
                case DayOfWeek.Thursday:
                    re = "Thứ 5";
                    break;
                case DayOfWeek.Friday:
                    re = "Thứ 6";
                    break;
                case DayOfWeek.Saturday:
                    re = "Thứ 7";
                    break;
                case DayOfWeek.Sunday:
                    re = "CN";
                    break;
            }
            return re;
        }
        public static Week GetDayOfWeek(int iweek, int year)
        {
            Week re = new Week();
            re.CurrentWeekOfYear = 0;
            DateTime dt = new System.DateTime(year, 1, 1);
            while (true)
            {
                if (re.CurrentWeekOfYear == iweek)
                {
                    while (dt.DayOfWeek != DayOfWeek.Monday)
                    {
                        dt = dt.AddDays(-1);
                        if (dt.Year < year)
                        {
                            dt = dt.AddDays(1);
                            break;
                        }
                    }
                    re.StartDay = dt;
                    while (dt.DayOfWeek != DayOfWeek.Sunday)
                    {
                        dt = dt.AddDays(1);
                        if (dt.Year > year)
                        {
                            dt = dt.AddDays(-1);
                            break;
                        }
                    }
                    re.EndDay = dt;
                    break;
                }
                dt = dt.AddDays(1);
                if (dt.DayOfWeek == DayOfWeek.Sunday)
                    re.CurrentWeekOfYear++;
            }
            return re;
        }
        public static Week GetWeekInYear(DateTime datetime, int year)
        {

            Week re = new Week();
            re.CurrentWeekOfYear = 0;
            re.NumOfWeeksInYear = 0;
            DateTime dt = (new DateTime(year, 1, 1));
            while (true)
            {
                if (datetime.ToString("dd/MM/yyyy") == dt.ToString("dd/MM/yyyy"))
                {
                    if (datetime.DayOfWeek != DayOfWeek.Sunday || datetime.DayOfWeek == DayOfWeek.Monday)
                        re.CurrentWeekOfYear++;
                    break;
                }
                dt = dt.AddDays(1);
                if (dt.DayOfWeek == DayOfWeek.Sunday)
                    re.CurrentWeekOfYear++;
            }
            dt = (new DateTime(year, 1, 1));
            while (true)
            {
                if (dt == new DateTime(year, 12, 31))
                {
                    if (dt.DayOfWeek != DayOfWeek.Sunday)
                        re.NumOfWeeksInYear++;
                    break;
                }
                dt = dt.AddDays(1);
                if (dt.DayOfWeek == DayOfWeek.Sunday)
                    re.NumOfWeeksInYear++;
            }
            while (datetime.DayOfWeek != DayOfWeek.Monday)
            {
                datetime = datetime.AddDays(-1); // tìm đầu tuần
                if (datetime.Year < DateTime.Now.Year)
                {
                    datetime = datetime.AddDays(1);
                    break;
                }
            }
            re.StartDay = datetime;

            DateTime tempDT = datetime;
            while (tempDT.DayOfWeek != DayOfWeek.Sunday)
            {
                tempDT = tempDT.AddDays(1);
                if (tempDT.Year > DateTime.Now.Year)
                {
                    tempDT = tempDT.AddDays(-1);
                    break;
                }
            }
            re.EndDay = tempDT;
            return re;
        }
        private DateTime _StartDay;

        public DateTime StartDay
        {
            get { return _StartDay; }
            set { _StartDay = value; }
        }
        private DateTime _EndDay;

        public DateTime EndDay
        {
            get { return _EndDay; }
            set { _EndDay = value; }
        }
        private int _CurrentWeekOfYear;

        public int CurrentWeekOfYear
        {
            get { return _CurrentWeekOfYear; }
            set { _CurrentWeekOfYear = value; }
        }
        private int _NumOfWeeksInYear;

        public int NumOfWeeksInYear
        {
            get { return _NumOfWeeksInYear; }
            set { _NumOfWeeksInYear = value; }
        }
    }
}