﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

using PMS.DAL;
using PMS.Objects;
using System.Globalization;

namespace ProjectManagementSystem
{
    public partial class Calendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                CultureInfo culInf = new CultureInfo("ru-RU");
                System.Threading.Thread.CurrentThread.CurrentCulture = culInf;

                MonthDropDownList.DataTextField = "Text";
                MonthDropDownList.DataValueField = "Value";
                createDropDownDataSource();
            }
        }
        /// <summary>
        /// Метод для формирования календаря
        /// </summary>
        /// <param name="startDate">первая дата</param>
        /// <param name="finishDate">последняя дата</param>
        /// <returns></returns>
        public Table CreateCalendar(DateTime startDate, DateTime finishDate)
        {
            //отделяем время
            int yearStart = startDate.Year;
            int monthStart = startDate.Month;
            int yearFinish = finishDate.Year;
            int monthFinish = finishDate.Month;
            startDate = new DateTime(startDate.Year, startDate.Month, startDate.Day);
            finishDate = new DateTime(finishDate.Year, finishDate.Month, finishDate.Day);

            BusinessCalendarService businessCalendarService = new BusinessCalendarService();
            List<Day> daysInformation = new List<Day>(BusinessCalendarServiceProvider.Current.GetDays(startDate, finishDate));

            //определяем какой день недели у startDate
            DayOfWeek dayOfWeek;
            DateTime lastMonthDay = new DateTime(yearStart, monthStart, 1).AddDays(-1);
            dayOfWeek = lastMonthDay.DayOfWeek;
            int lastMonthDaysCount = 0;
            switch (dayOfWeek)
            {
                case DayOfWeek.Sunday:
                    lastMonthDaysCount = 6;
                    break;
                case DayOfWeek.Monday:
                    break;
                case DayOfWeek.Tuesday:
                    lastMonthDaysCount = 1;
                    break;
                case DayOfWeek.Wednesday:
                    lastMonthDaysCount = 2;
                    break;
                case DayOfWeek.Thursday:
                    lastMonthDaysCount = 3;
                    break;
                case DayOfWeek.Friday:
                    lastMonthDaysCount = 4;
                    break;
                case DayOfWeek.Saturday:
                    lastMonthDaysCount = 5;
                    break;
                default:
                    lastMonthDaysCount = 0;
                    break;
            }

            //Устанавливаем дату для первого дня в календаре
            DateTime calendarStartDay = lastMonthDay.AddDays(-lastMonthDaysCount);

            //Формируем календарь
            Table calendar = new Table();
            calendar.CssClass = "calendar";
            TableRow mainCalendarRow = new TableRow();
            Table calendarCell = new Table();

            //Формируем шапку для календаря
            TableRow monthNameRow = new TableRow();
            TableCell monthNameCell = new TableCell();
            monthNameCell.Attributes.Add("colspan", "7");
            string[] monthNames = DateTimeFormatInfo.CurrentInfo.MonthNames;
            monthNameCell.Text = monthNames[monthStart - 1];
            monthNameRow.Cells.Add(monthNameCell);

            calendarCell.Rows.Add(monthNameRow);
            calendarCell.Rows.Add(createCalendarFooter());

            //Формируем дни для календаря
            for (int rowNumber = 0; rowNumber < 5; rowNumber++)
            {
                TableRow tableRow = new TableRow();
                for (int cellNumber = 0; cellNumber < 7; cellNumber++)
                {
                    TableCell tableCell = new TableCell();
                    tableCell.Text = calendarStartDay.Day.ToString();

                    if ((calendarStartDay >= startDate) && (calendarStartDay <= finishDate))
                    {
                        List<Day> currentDay = daysInformation.Where<Day>(d => d.GetDate() == calendarStartDay).ToList<Day>();

                        if (currentDay.Count == 0)
                        {
                            tableCell.CssClass = "calendarDay";
                        }
                        else
                        {
                            if (currentDay[0].IsWorkDay)
                            {
                                tableCell.CssClass = "workDay";
                            }
                            else
                            {
                                tableCell.CssClass = "holiday";
                            }
                        }
                    }
                    else
                    {
                        tableCell.CssClass = "calendarDay";
                    }
                    tableRow.Cells.Add(tableCell);
                    calendarStartDay = calendarStartDay.AddDays(1);
                }
                calendarCell.Rows.Add(tableRow);
            }

            TableCell mainCell = new TableCell();
            mainCell.Controls.Add(calendarCell);
            mainCalendarRow.Cells.Add(mainCell);

            Table separator = new Table();
            TableCell separatorCell = new TableCell();
            separatorCell.Style.Add("width", "100px");
            mainCalendarRow.Cells.Add(separatorCell);

            mainCalendarRow.Cells.Add(createCalendarDescription());

            calendar.Rows.Add(mainCalendarRow);
            return calendar;
        }

        /// <summary>
        /// Метод формирует шапку календаря
        /// </summary>
        /// <returns></returns>
        private TableRow createCalendarFooter()
        {
            TableRow calendarFooter = new TableRow();
            calendarFooter.CssClass = "calendarFooter";
            TableCell Mon = new TableCell();
            Mon.Text = "Пн";
            TableCell Tue = new TableCell();
            Tue.Text = "Вт";
            TableCell Wed = new TableCell();
            Wed.Text = "Ср";
            TableCell Thu = new TableCell();
            Thu.Text = "Чт";
            TableCell Fri = new TableCell();
            Fri.Text = "Пт";
            TableCell Sut = new TableCell();
            Sut.Text = "Сб";
            TableCell Sun = new TableCell();
            Sun.Text = "Вс";
            calendarFooter.Cells.Add(Mon);
            calendarFooter.Cells.Add(Tue);
            calendarFooter.Cells.Add(Wed);
            calendarFooter.Cells.Add(Thu);
            calendarFooter.Cells.Add(Fri);
            calendarFooter.Cells.Add(Sut);
            calendarFooter.Cells.Add(Sun);
            return calendarFooter;
        }

        /// <summary>
        /// Метод для формирования описания цветов календаря
        /// </summary>
        /// <returns></returns>
        private TableCell createCalendarDescription()
        {
            TableCell descriptionCell = new TableCell();
            descriptionCell.Style.Add("text-align", "left");
            Table calendarDescriptionCell = new Table();
            TableRow calendarDescriptionRow1 = new TableRow();
            TableCell colorWorkDayCell = new TableCell();
            TableCell descriptionWorkDayCell = new TableCell();
            descriptionWorkDayCell.Text = " - рабочий день";
            colorWorkDayCell.CssClass = "workDay";
            calendarDescriptionRow1.Cells.Add(colorWorkDayCell);
            calendarDescriptionRow1.Cells.Add(descriptionWorkDayCell);
            calendarDescriptionCell.Rows.Add(calendarDescriptionRow1);

            TableRow separatorRow = new TableRow();
            TableCell separatorRowCell = new TableCell();
            separatorRowCell.CssClass = "empty";
            separatorRow.Cells.Add(separatorRowCell);
            //calendarDescriptionCell.Rows.Add(separatorRow);

            TableRow calendarDescriptionRow2 = new TableRow();
            TableCell colorHolidayCell = new TableCell();
            TableCell descriptionHolidayCell = new TableCell();
            descriptionHolidayCell.Text = " - выходной день";
            colorHolidayCell.CssClass = "holiday";
            calendarDescriptionRow2.Cells.Add(colorHolidayCell);
            calendarDescriptionRow2.Cells.Add(descriptionHolidayCell);
            calendarDescriptionCell.Rows.Add(calendarDescriptionRow2);

            //calendarDescriptionCell.Rows.Add(separatorRow);


            TableRow calendarDescriptionRow3 = new TableRow();
            TableCell colorNoInfoCell = new TableCell();
            TableCell descriptionNoInfoCell = new TableCell();
            descriptionNoInfoCell.Text = " - по дню нет информации";
            colorNoInfoCell.CssClass = "calendarDay";
            calendarDescriptionRow3.Cells.Add(colorNoInfoCell);
            calendarDescriptionRow3.Cells.Add(descriptionNoInfoCell);
            calendarDescriptionCell.Rows.Add(calendarDescriptionRow3);


            descriptionCell.Controls.Add(calendarDescriptionCell);
            return descriptionCell;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int monthNumber = Convert.ToInt32(MonthDropDownList.SelectedValue);
            DateTime startDate = new DateTime(2017, monthNumber, 1);
            DateTime finishDate = (startDate.AddMonths(1)).AddDays(-1);
            calendarBlock.Controls.Add(CreateCalendar(startDate, finishDate));
        }
        protected void createDropDownDataSource()
        {
            ListItemCollection listItemCollection = new ListItemCollection();
            int monthIterator = 1;
            foreach (string month in DateTimeFormatInfo.CurrentInfo.MonthNames)
            {
                ListItem listItem = new ListItem(month, monthIterator.ToString());
                listItemCollection.Add(listItem);
                monthIterator++;
            }
            MonthDropDownList.DataSource = listItemCollection;
            MonthDropDownList.DataBind();
        }
    }
}