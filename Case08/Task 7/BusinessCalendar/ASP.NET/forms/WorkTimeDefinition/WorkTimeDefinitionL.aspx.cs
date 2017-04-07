﻿/*flexberryautogenerated="true"*/
namespace IIS.BusinessCalendar
{
    using System;
    using ICSSoft.STORMNET.Web.Controls;

    using Resources;

    public partial class WorkTimeDefinitionL : BaseListForm<WorkTimeDefinition>
    {
        /// <summary>
        /// Конструктор без параметров,
        /// инициализирует свойства, соответствующие конкретной форме.
        /// </summary>
        public WorkTimeDefinitionL() : base(WorkTimeDefinition.Views.WorkTimeDefinitionL)
        {
            EditPage = WorkTimeDefinitionE.FormPath;
        }
                
        /// <summary>
        /// Путь до формы.
        /// </summary>
        public static string FormPath
        {
            get { return "~/forms/WorkTimeDefinition/WorkTimeDefinitionL.aspx"; }
        }

        /// <summary>
        /// Вызывается самым первым в Page_Load.
        /// </summary>
        protected override void Preload()
        {
        }

        /// <summary>
        /// Вызывается самым последним в Page_Load.
        /// </summary>
        protected override void Postload()
        {
        }
    }
}
