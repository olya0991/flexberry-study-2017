﻿/*flexberryautogenerated="true"*/
namespace TeploCorp.TeploUchet
{
    using System;
    using ICSSoft.STORMNET.Web.Controls;

    using Resources;
    using System.Web;
    using ICSSoft.STORMNET.FunctionalLanguage.SQLWhere;
    using ICSSoft.STORMNET.Business;
    using ICSSoft.STORMNET.Business.LINQProvider;
    using System.Linq;
    using ICSSoft.STORMNET.FunctionalLanguage;
    using ICSSoft.STORMNET;

    public partial class УчастокСетиL : BaseListForm<УчастокСети>
    {
        /// <summary>
        /// Конструктор без параметров,
        /// инициализирует свойства, соответствующие конкретной форме.
        /// </summary>
        public УчастокСетиL() : base(УчастокСети.Views.УчастокСетиL)
        {
            EditPage = УчастокСетиE.FormPath;
        }
                
        /// <summary>
        /// Путь до формы.
        /// </summary>
        public static string FormPath
        {
            get { return "~/forms/UchastokSeti/UchastokSetiL.aspx"; }
        }

        /// <summary>
        /// Вызывается самым первым в Page_Load.
        /// </summary>
        protected override void Preload()
        {
            string strUser = HttpContext.Current.User.Identity.Name;
            var _dataService = (SQLDataService)DataServiceProvider.DataService;
            var _Inspector = _dataService.Query<Инспектор>(Инспектор.Views.ИнспекторE).FirstOrDefault(x => x.Логин == strUser); // получаем объект инспектор по логину

            if (_Inspector != null)
            {
                SQLWhereLanguageDef langdef = SQLWhereLanguageDef.LanguageDef;
                string strDistrictName = _Inspector.Район.Название; //название района инспектора

                Function lf = langdef.GetFunction(langdef.funcEQ,
                        new VariableDef(langdef.StringType, Information.ExtractPropertyPath<УчастокСети>(x => x.Объект.Здание.Район.Название)),
                        strDistrictName);
                WebObjectListView1.LimitFunction = lf;
            };             
        }

        /// <summary>
        /// Вызывается самым последним в Page_Load.
        /// </summary>
        protected override void Postload()
        {
        }
    }
}
