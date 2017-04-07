﻿/*flexberryautogenerated="true"*/

namespace IIS.BusinessCalendar
{
    using System.Linq;
    using ICSSoft.STORMNET;
    using ICSSoft.STORMNET.Business.LINQProvider;
    using ICSSoft.STORMNET.Business;
    using ICSSoft.STORMNET.Web.Controls;
    using ICSSoft.STORMNET.Web.AjaxControls;
    
    public partial class WeekE : BaseEditForm<Week>
    {
        /// <summary>
        /// Конструктор формы.
        /// </summary>
        public WeekE()
            : base(Week.Views.WeekE)
        {
        }

        /// <summary>
        /// Путь до формы.
        /// </summary>
        public static string FormPath
        {
            get { return "~/forms/Week/WeekE.aspx"; }
        }

        /// <summary>
        /// Вызывается самым первым в Page_Load.
        /// </summary>
        protected override void Preload()
        {
        }

        /// <summary>
        /// Здесь лучше всего писать бизнес-логику, оперируя только объектом данных.
        /// </summary>
        protected override void PreApplyToControls()
        {
        }

        /// <summary>
        /// Здесь лучше всего изменять свойства контролов на странице,
        /// которые не обрабатываются WebBinder.
        /// </summary>
        protected override void PostApplyToControls()
        {
            Page.Validate();
        }

        /// <summary>
        /// Вызывается самым последним в Page_Load.
        /// </summary>
        protected override void Postload()
        {
        }

        /// <summary>
        /// Валидация объекта для сохранения.
        /// </summary>
        /// <returns>true - продолжать сохранение, иначе - прекратить.</returns>
        protected override bool PreSaveObject()
        {
            return base.PreSaveObject();
        }

        /// <summary>
        /// Нетривиальная логика сохранения объекта.
        /// </summary>
        /// <returns>Объект данных, который сохранился.</returns>
        protected override DataObject SaveObject()
        {
            if(DataObject != null)
            {
                switch (DataObject.GetStatus())
                {
                    case ObjectStatus.Created:
                        using (var ds = (SQLDataService)DataServiceProvider.DataService)
                        {
                            object calendarId = Session["CalendarID"];
                            Calendar calendar = ds.Query<Calendar>()
                                            .Where(c => c.__PrimaryKey == calendarId)
                                            .First();
                            ds.LoadObject(calendar);
                            DataObject.Calendar = calendar;
                        }                      
                        TSSaveHelper.CreateTimeSpans(DataObject);
                        break;
                    case ObjectStatus.Deleted:
                        TSSaveHelper.DeleteTimeSpans(DataObject);
                        break;
                    default:
                        {
                            if (ctrlMondayTS.Status == ObjectStatus.Altered) TSSaveHelper.UpdateTimeSpans(DataObject.Monday, DataObject.MondayTS);
                            if (ctrlTuesdayTS.Status == ObjectStatus.Altered) TSSaveHelper.UpdateTimeSpans(DataObject.Tuesday, DataObject.TuesdayTS);
                            if (ctrlWednesdayTS.Status == ObjectStatus.Altered) TSSaveHelper.UpdateTimeSpans(DataObject.Wednesday, DataObject.WednesdayTS);
                            if (ctrlThursdayTS.Status == ObjectStatus.Altered) TSSaveHelper.UpdateTimeSpans(DataObject.Thursday, DataObject.ThursdayTS);
                            if (ctrlFridayTS.Status == ObjectStatus.Altered) TSSaveHelper.UpdateTimeSpans(DataObject.Friday, DataObject.FridayTS);
                            if (ctrlSaturdayTS.Status == ObjectStatus.Altered) TSSaveHelper.UpdateTimeSpans(DataObject.Saturday, DataObject.SaturdayTS);
                            if (ctrlSundayTS.Status == ObjectStatus.Altered) TSSaveHelper.UpdateTimeSpans(DataObject.Sunday, DataObject.SundayTS);
                        }
                        break;
                }
            }
            return base.SaveObject();
        }
    }
}