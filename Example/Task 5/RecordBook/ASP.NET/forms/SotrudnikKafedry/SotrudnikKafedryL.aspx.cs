﻿/*flexberryautogenerated="true"*/
namespace NewPlatform.RecordBook
{
    using System;
    using ICSSoft.STORMNET.Web.Controls;

    using Resources;

    public partial class СотрудникКафедрыL : BaseListForm<СотрудникКафедры>
    {
        /// <summary>
        /// Конструктор без параметров,
        /// инициализирует свойства, соответствующие конкретной форме.
        /// </summary>
        public СотрудникКафедрыL() : base(СотрудникКафедры.Views.СотрудникКафедрыL)
        {
            EditPage = СотрудникКафедрыE.FormPath;
        }
                
        /// <summary>
        /// Путь до формы.
        /// </summary>
        public static string FormPath
        {
            get { return "~/forms/SotrudnikKafedry/SotrudnikKafedryL.aspx"; }
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
