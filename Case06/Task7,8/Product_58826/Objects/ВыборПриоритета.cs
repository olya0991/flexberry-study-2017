﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IIS.Product_58826
{
    using System;
    using System.Xml;
    using ICSSoft.STORMNET.Business;
    using ICSSoft.STORMNET;
    using ICSSoft.STORMNET.Business.Audit;
    using ICSSoft.STORMNET.Business.Audit.Objects;
    
    
    // *** Start programmer edit section *** (Using statements)

    // *** End programmer edit section *** (Using statements)


    /// <summary>
    /// Выбор приоритета.
    /// </summary>
    // *** Start programmer edit section *** (ВыборПриоритета CustomAttributes)

    // *** End programmer edit section *** (ВыборПриоритета CustomAttributes)
    [BusinessServer("IIS.Product_58826.ВыборПриоритетаБС, Product_58826(BusinessServers)", ICSSoft.STORMNET.Business.DataServiceObjectEvents.OnAllEvents)]
    [AutoAltered()]
    [Caption("Выбор приоритета")]
    [AccessType(ICSSoft.STORMNET.AccessType.@this)]
    [View("AuditView", new string[] {
            "Приоритет as \'Приоритет\'",
            "Актуальность as \'Актуальность\'",
            "МодульВыбран as \'Модуль выбран\'",
            "Студент as \'Студент\'",
            "Студент.Фамилия as \'Фамилия\'",
            "Модуль as \'Модуль\'",
            "Модуль.Название as \'Название\'"})]
    [View("ВыборПриоритетаE", new string[] {
            "Студент",
            "Студент.Фамилия as \' \'",
            "Студент.Имя",
            "Студент.Отчество",
            "Студент.ФИО as \'  \'",
            "Модуль",
            "Модуль.Название as \' \'",
            "Приоритет",
            "Актуальность",
            "МодульВыбран as \'Выбран для обучения\'"}, Hidden=new string[] {
            "Студент",
            "Студент.Фамилия",
            "Студент.Имя",
            "Студент.Отчество",
            "Студент.ФИО",
            "Модуль",
            "Модуль.Название",
            "Актуальность"})]
    [View("ВыборПриоритетаL", new string[] {
            "Студент.Фамилия",
            "Студент.Имя",
            "Студент.Отчество",
            "Студент.ФИО as \'Студент \'",
            "Модуль.Семестр.Номер as \'Семестр № \'",
            "Модуль.Название as \'Модуль \'",
            "Модуль.Описание as \'Описание\'",
            "Модуль.Организация.Название as \'Организация\'",
            "Приоритет as \'Приоритет\'",
            "Актуальность",
            "МодульВыбран as \'Выбран студентом для обучения\'"}, Hidden=new string[] {
            "Студент.Фамилия",
            "Студент.Имя",
            "Студент.Отчество"})]
    [View("Скрипт", new string[] {
            "Приоритет",
            "Актуальность",
            "МодульВыбран",
            "Студент",
            "Студент.Фамилия",
            "Студент.Имя",
            "Студент.Отчество",
            "Студент.Логин",
            "Студент.ДатаРождения",
            "Студент.ФИО",
            "Студент.АдресПочты",
            "Студент.Обучается",
            "Модуль",
            "Модуль.Название",
            "Модуль.Организация",
            "Модуль.Организация.Название"})]
    public class ВыборПриоритета : ICSSoft.STORMNET.DataObject, IDataObjectWithAuditFields
    {
        
        private int fПриоритет;
        
        private bool fАктуальность = true;
        
        private bool fМодульВыбран = false;
        
        private System.Nullable<System.DateTime> fCreateTime;
        
        private string fCreator;
        
        private System.Nullable<System.DateTime> fEditTime;
        
        private string fEditor;
        
        private IIS.Product_58826.Студент fСтудент;
        
        private IIS.Product_58826.Модуль fМодуль;
        
        // *** Start programmer edit section *** (ВыборПриоритета CustomMembers)

        // *** End programmer edit section *** (ВыборПриоритета CustomMembers)

        
        /// <summary>
        /// Приоритет.
        /// </summary>
        // *** Start programmer edit section *** (ВыборПриоритета.Приоритет CustomAttributes)

        // *** End programmer edit section *** (ВыборПриоритета.Приоритет CustomAttributes)
        [NotNull()]
        public virtual int Приоритет
        {
            get
            {
                // *** Start programmer edit section *** (ВыборПриоритета.Приоритет Get start)

                // *** End programmer edit section *** (ВыборПриоритета.Приоритет Get start)
                int result = this.fПриоритет;
                // *** Start programmer edit section *** (ВыборПриоритета.Приоритет Get end)

                // *** End programmer edit section *** (ВыборПриоритета.Приоритет Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ВыборПриоритета.Приоритет Set start)

                // *** End programmer edit section *** (ВыборПриоритета.Приоритет Set start)
                this.fПриоритет = value;
                // *** Start programmer edit section *** (ВыборПриоритета.Приоритет Set end)

                // *** End programmer edit section *** (ВыборПриоритета.Приоритет Set end)
            }
        }
        
        /// <summary>
        /// Актуальность.
        /// </summary>
        // *** Start programmer edit section *** (ВыборПриоритета.Актуальность CustomAttributes)

        // *** End programmer edit section *** (ВыборПриоритета.Актуальность CustomAttributes)
        public virtual bool Актуальность
        {
            get
            {
                // *** Start programmer edit section *** (ВыборПриоритета.Актуальность Get start)

                // *** End programmer edit section *** (ВыборПриоритета.Актуальность Get start)
                bool result = this.fАктуальность;
                // *** Start programmer edit section *** (ВыборПриоритета.Актуальность Get end)

                // *** End programmer edit section *** (ВыборПриоритета.Актуальность Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ВыборПриоритета.Актуальность Set start)

                // *** End programmer edit section *** (ВыборПриоритета.Актуальность Set start)
                this.fАктуальность = value;
                // *** Start programmer edit section *** (ВыборПриоритета.Актуальность Set end)

                // *** End programmer edit section *** (ВыборПриоритета.Актуальность Set end)
            }
        }
        
        /// <summary>
        /// МодульВыбран.
        /// </summary>
        // *** Start programmer edit section *** (ВыборПриоритета.МодульВыбран CustomAttributes)

        // *** End programmer edit section *** (ВыборПриоритета.МодульВыбран CustomAttributes)
        public virtual bool МодульВыбран
        {
            get
            {
                // *** Start programmer edit section *** (ВыборПриоритета.МодульВыбран Get start)

                // *** End programmer edit section *** (ВыборПриоритета.МодульВыбран Get start)
                bool result = this.fМодульВыбран;
                // *** Start programmer edit section *** (ВыборПриоритета.МодульВыбран Get end)

                // *** End programmer edit section *** (ВыборПриоритета.МодульВыбран Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ВыборПриоритета.МодульВыбран Set start)

                // *** End programmer edit section *** (ВыборПриоритета.МодульВыбран Set start)
                this.fМодульВыбран = value;
                // *** Start programmer edit section *** (ВыборПриоритета.МодульВыбран Set end)

                // *** End programmer edit section *** (ВыборПриоритета.МодульВыбран Set end)
            }
        }
        
        /// <summary>
        /// Время создания объекта.
        /// </summary>
        // *** Start programmer edit section *** (ВыборПриоритета.CreateTime CustomAttributes)

        // *** End programmer edit section *** (ВыборПриоритета.CreateTime CustomAttributes)
        public virtual System.Nullable<System.DateTime> CreateTime
        {
            get
            {
                // *** Start programmer edit section *** (ВыборПриоритета.CreateTime Get start)

                // *** End programmer edit section *** (ВыборПриоритета.CreateTime Get start)
                System.Nullable<System.DateTime> result = this.fCreateTime;
                // *** Start programmer edit section *** (ВыборПриоритета.CreateTime Get end)

                // *** End programmer edit section *** (ВыборПриоритета.CreateTime Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ВыборПриоритета.CreateTime Set start)

                // *** End programmer edit section *** (ВыборПриоритета.CreateTime Set start)
                this.fCreateTime = value;
                // *** Start programmer edit section *** (ВыборПриоритета.CreateTime Set end)

                // *** End programmer edit section *** (ВыборПриоритета.CreateTime Set end)
            }
        }
        
        /// <summary>
        /// Создатель объекта.
        /// </summary>
        // *** Start programmer edit section *** (ВыборПриоритета.Creator CustomAttributes)

        // *** End programmer edit section *** (ВыборПриоритета.Creator CustomAttributes)
        [StrLen(255)]
        public virtual string Creator
        {
            get
            {
                // *** Start programmer edit section *** (ВыборПриоритета.Creator Get start)

                // *** End programmer edit section *** (ВыборПриоритета.Creator Get start)
                string result = this.fCreator;
                // *** Start programmer edit section *** (ВыборПриоритета.Creator Get end)

                // *** End programmer edit section *** (ВыборПриоритета.Creator Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ВыборПриоритета.Creator Set start)

                // *** End programmer edit section *** (ВыборПриоритета.Creator Set start)
                this.fCreator = value;
                // *** Start programmer edit section *** (ВыборПриоритета.Creator Set end)

                // *** End programmer edit section *** (ВыборПриоритета.Creator Set end)
            }
        }
        
        /// <summary>
        /// Время последнего редактирования объекта.
        /// </summary>
        // *** Start programmer edit section *** (ВыборПриоритета.EditTime CustomAttributes)

        // *** End programmer edit section *** (ВыборПриоритета.EditTime CustomAttributes)
        public virtual System.Nullable<System.DateTime> EditTime
        {
            get
            {
                // *** Start programmer edit section *** (ВыборПриоритета.EditTime Get start)

                // *** End programmer edit section *** (ВыборПриоритета.EditTime Get start)
                System.Nullable<System.DateTime> result = this.fEditTime;
                // *** Start programmer edit section *** (ВыборПриоритета.EditTime Get end)

                // *** End programmer edit section *** (ВыборПриоритета.EditTime Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ВыборПриоритета.EditTime Set start)

                // *** End programmer edit section *** (ВыборПриоритета.EditTime Set start)
                this.fEditTime = value;
                // *** Start programmer edit section *** (ВыборПриоритета.EditTime Set end)

                // *** End programmer edit section *** (ВыборПриоритета.EditTime Set end)
            }
        }
        
        /// <summary>
        /// Последний редактор объекта.
        /// </summary>
        // *** Start programmer edit section *** (ВыборПриоритета.Editor CustomAttributes)

        // *** End programmer edit section *** (ВыборПриоритета.Editor CustomAttributes)
        [StrLen(255)]
        public virtual string Editor
        {
            get
            {
                // *** Start programmer edit section *** (ВыборПриоритета.Editor Get start)

                // *** End programmer edit section *** (ВыборПриоритета.Editor Get start)
                string result = this.fEditor;
                // *** Start programmer edit section *** (ВыборПриоритета.Editor Get end)

                // *** End programmer edit section *** (ВыборПриоритета.Editor Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ВыборПриоритета.Editor Set start)

                // *** End programmer edit section *** (ВыборПриоритета.Editor Set start)
                this.fEditor = value;
                // *** Start programmer edit section *** (ВыборПриоритета.Editor Set end)

                // *** End programmer edit section *** (ВыборПриоритета.Editor Set end)
            }
        }
        
        /// <summary>
        /// Выбор приоритета.
        /// </summary>
        // *** Start programmer edit section *** (ВыборПриоритета.Студент CustomAttributes)

        // *** End programmer edit section *** (ВыборПриоритета.Студент CustomAttributes)
        [PropertyStorage(new string[] {
                "Студент"})]
        [NotNull()]
        public virtual IIS.Product_58826.Студент Студент
        {
            get
            {
                // *** Start programmer edit section *** (ВыборПриоритета.Студент Get start)

                // *** End programmer edit section *** (ВыборПриоритета.Студент Get start)
                IIS.Product_58826.Студент result = this.fСтудент;
                // *** Start programmer edit section *** (ВыборПриоритета.Студент Get end)

                // *** End programmer edit section *** (ВыборПриоритета.Студент Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ВыборПриоритета.Студент Set start)

                // *** End programmer edit section *** (ВыборПриоритета.Студент Set start)
                this.fСтудент = value;
                // *** Start programmer edit section *** (ВыборПриоритета.Студент Set end)

                // *** End programmer edit section *** (ВыборПриоритета.Студент Set end)
            }
        }
        
        /// <summary>
        /// Выбор приоритета.
        /// </summary>
        // *** Start programmer edit section *** (ВыборПриоритета.Модуль CustomAttributes)

        // *** End programmer edit section *** (ВыборПриоритета.Модуль CustomAttributes)
        [NotNull()]
        public virtual IIS.Product_58826.Модуль Модуль
        {
            get
            {
                // *** Start programmer edit section *** (ВыборПриоритета.Модуль Get start)

                // *** End programmer edit section *** (ВыборПриоритета.Модуль Get start)
                IIS.Product_58826.Модуль result = this.fМодуль;
                // *** Start programmer edit section *** (ВыборПриоритета.Модуль Get end)

                // *** End programmer edit section *** (ВыборПриоритета.Модуль Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (ВыборПриоритета.Модуль Set start)

                // *** End programmer edit section *** (ВыборПриоритета.Модуль Set start)
                this.fМодуль = value;
                // *** Start programmer edit section *** (ВыборПриоритета.Модуль Set end)

                // *** End programmer edit section *** (ВыборПриоритета.Модуль Set end)
            }
        }
        
        /// <summary>
        /// Class views container.
        /// </summary>
        public class Views
        {
            
            /// <summary>
            /// "AuditView" view.
            /// </summary>
            public static ICSSoft.STORMNET.View AuditView
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("AuditView", typeof(IIS.Product_58826.ВыборПриоритета));
                }
            }
            
            /// <summary>
            /// "ВыборПриоритетаE" view.
            /// </summary>
            public static ICSSoft.STORMNET.View ВыборПриоритетаE
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("ВыборПриоритетаE", typeof(IIS.Product_58826.ВыборПриоритета));
                }
            }
            
            /// <summary>
            /// "ВыборПриоритетаL" view.
            /// </summary>
            public static ICSSoft.STORMNET.View ВыборПриоритетаL
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("ВыборПриоритетаL", typeof(IIS.Product_58826.ВыборПриоритета));
                }
            }
            
            /// <summary>
            /// "Скрипт" view.
            /// </summary>
            public static ICSSoft.STORMNET.View Скрипт
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("Скрипт", typeof(IIS.Product_58826.ВыборПриоритета));
                }
            }
        }
        
        /// <summary>
        /// Audit class settings.
        /// </summary>
        public class AuditSettings
        {
            
            /// <summary>
            /// Включён ли аудит для класса.
            /// </summary>
            public static bool AuditEnabled = true;
            
            /// <summary>
            /// Использовать имя представления для аудита по умолчанию.
            /// </summary>
            public static bool UseDefaultView = false;
            
            /// <summary>
            /// Включён ли аудит операции чтения.
            /// </summary>
            public static bool SelectAudit = false;
            
            /// <summary>
            /// Имя представления для аудирования операции чтения.
            /// </summary>
            public static string SelectAuditViewName = "AuditView";
            
            /// <summary>
            /// Включён ли аудит операции создания.
            /// </summary>
            public static bool InsertAudit = true;
            
            /// <summary>
            /// Имя представления для аудирования операции создания.
            /// </summary>
            public static string InsertAuditViewName = "AuditView";
            
            /// <summary>
            /// Включён ли аудит операции изменения.
            /// </summary>
            public static bool UpdateAudit = true;
            
            /// <summary>
            /// Имя представления для аудирования операции изменения.
            /// </summary>
            public static string UpdateAuditViewName = "AuditView";
            
            /// <summary>
            /// Включён ли аудит операции удаления.
            /// </summary>
            public static bool DeleteAudit = true;
            
            /// <summary>
            /// Имя представления для аудирования операции удаления.
            /// </summary>
            public static string DeleteAuditViewName = "AuditView";
            
            /// <summary>
            /// Путь к форме просмотра результатов аудита.
            /// </summary>
            public static string FormUrl = "";
            
            /// <summary>
            /// Режим записи данных аудита (синхронный или асинхронный).
            /// </summary>
            public static ICSSoft.STORMNET.Business.Audit.Objects.tWriteMode WriteMode = ICSSoft.STORMNET.Business.Audit.Objects.tWriteMode.Synchronous;
            
            /// <summary>
            /// Максимальная длина сохраняемого значения поля (если 0, то строка обрезаться не будет).
            /// </summary>
            public static int PrunningLength = 0;
            
            /// <summary>
            /// Показывать ли пользователям в изменениях первичные ключи.
            /// </summary>
            public static bool ShowPrimaryKey = false;
            
            /// <summary>
            /// Сохранять ли старое значение.
            /// </summary>
            public static bool KeepOldValue = true;
            
            /// <summary>
            /// Сжимать ли сохраняемые значения.
            /// </summary>
            public static bool Compress = false;
            
            /// <summary>
            /// Сохранять ли все значения атрибутов, а не только изменяемые.
            /// </summary>
            public static bool KeepAllValues = false;
        }
    }
}
