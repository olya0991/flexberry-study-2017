﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TeploCorp.TeploUchet
{
    using System;
    using System.Xml;
    using ICSSoft.STORMNET;
    using ICSSoft.STORMNET.Business.Audit;
    using ICSSoft.STORMNET.Business.Audit.Objects;
    
    
    // *** Start programmer edit section *** (Using statements)

    // *** End programmer edit section *** (Using statements)


    /// <summary>
    /// Инспектор.
    /// </summary>
    // *** Start programmer edit section *** (Инспектор CustomAttributes)

    // *** End programmer edit section *** (Инспектор CustomAttributes)
    [AutoAltered()]
    [ICSSoft.STORMNET.NotStored(false)]
    [AccessType(ICSSoft.STORMNET.AccessType.none)]
    [View("AuditView", new string[] {
            "ID as \'ID\'",
            "Фамилия as \'Фамилия\'",
            "Имя as \'Имя\'",
            "Отчество as \'Отчество\'",
            "Логин as \'Логин\'",
            "Район as \'Район\'",
            "Район.Название as \'Район\'"})]
    [View("ИнспекторE", new string[] {
            "ID as \'ID\'",
            "Фамилия as \'Фамилия\'",
            "Имя as \'Имя\'",
            "Отчество as \'Отчество\'",
            "Логин as \'Логин\'",
            "Район as \'Район\'",
            "Район.Название as \'Район\'"})]
    [View("ИнспекторL", new string[] {
            "ID as \'ID\'",
            "Фамилия as \'Фамилия\'",
            "Имя as \'Имя\'",
            "Отчество as \'Отчество\'",
            "Логин as \'Логин\'",
            "Район.Название as \'Район\'"
    }, Hidden=new string[] {
            })]
    public class Инспектор : TeploCorp.TeploUchet.Персона, IDataObjectWithAuditFields
    {
        
        private string fID;
        
        private System.Nullable<System.DateTime> fCreateTime;
        
        private string fCreator;
        
        private System.Nullable<System.DateTime> fEditTime;
        
        private string fEditor;
        
        private TeploCorp.TeploUchet.Район fРайон;
        
        // *** Start programmer edit section *** (Инспектор CustomMembers)

        // *** End programmer edit section *** (Инспектор CustomMembers)

        
        /// <summary>
        /// ID.
        /// </summary>
        // *** Start programmer edit section *** (Инспектор.ID CustomAttributes)

        // *** End programmer edit section *** (Инспектор.ID CustomAttributes)
        [StrLen(255)]
        [NotNull()]
        public virtual string ID
        {
            get
            {
                // *** Start programmer edit section *** (Инспектор.ID Get start)

                // *** End programmer edit section *** (Инспектор.ID Get start)
                string result = this.fID;
                // *** Start programmer edit section *** (Инспектор.ID Get end)

                // *** End programmer edit section *** (Инспектор.ID Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Инспектор.ID Set start)

                // *** End programmer edit section *** (Инспектор.ID Set start)
                this.fID = value;
                // *** Start programmer edit section *** (Инспектор.ID Set end)

                // *** End programmer edit section *** (Инспектор.ID Set end)
            }
        }
        
        /// <summary>
        /// Время создания объекта.
        /// </summary>
        // *** Start programmer edit section *** (Инспектор.CreateTime CustomAttributes)

        // *** End programmer edit section *** (Инспектор.CreateTime CustomAttributes)
        public virtual System.Nullable<System.DateTime> CreateTime
        {
            get
            {
                // *** Start programmer edit section *** (Инспектор.CreateTime Get start)

                // *** End programmer edit section *** (Инспектор.CreateTime Get start)
                System.Nullable<System.DateTime> result = this.fCreateTime;
                // *** Start programmer edit section *** (Инспектор.CreateTime Get end)

                // *** End programmer edit section *** (Инспектор.CreateTime Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Инспектор.CreateTime Set start)

                // *** End programmer edit section *** (Инспектор.CreateTime Set start)
                this.fCreateTime = value;
                // *** Start programmer edit section *** (Инспектор.CreateTime Set end)

                // *** End programmer edit section *** (Инспектор.CreateTime Set end)
            }
        }
        
        /// <summary>
        /// Создатель объекта.
        /// </summary>
        // *** Start programmer edit section *** (Инспектор.Creator CustomAttributes)

        // *** End programmer edit section *** (Инспектор.Creator CustomAttributes)
        [StrLen(255)]
        public virtual string Creator
        {
            get
            {
                // *** Start programmer edit section *** (Инспектор.Creator Get start)

                // *** End programmer edit section *** (Инспектор.Creator Get start)
                string result = this.fCreator;
                // *** Start programmer edit section *** (Инспектор.Creator Get end)

                // *** End programmer edit section *** (Инспектор.Creator Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Инспектор.Creator Set start)

                // *** End programmer edit section *** (Инспектор.Creator Set start)
                this.fCreator = value;
                // *** Start programmer edit section *** (Инспектор.Creator Set end)

                // *** End programmer edit section *** (Инспектор.Creator Set end)
            }
        }
        
        /// <summary>
        /// Время последнего редактирования объекта.
        /// </summary>
        // *** Start programmer edit section *** (Инспектор.EditTime CustomAttributes)

        // *** End programmer edit section *** (Инспектор.EditTime CustomAttributes)
        public virtual System.Nullable<System.DateTime> EditTime
        {
            get
            {
                // *** Start programmer edit section *** (Инспектор.EditTime Get start)

                // *** End programmer edit section *** (Инспектор.EditTime Get start)
                System.Nullable<System.DateTime> result = this.fEditTime;
                // *** Start programmer edit section *** (Инспектор.EditTime Get end)

                // *** End programmer edit section *** (Инспектор.EditTime Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Инспектор.EditTime Set start)

                // *** End programmer edit section *** (Инспектор.EditTime Set start)
                this.fEditTime = value;
                // *** Start programmer edit section *** (Инспектор.EditTime Set end)

                // *** End programmer edit section *** (Инспектор.EditTime Set end)
            }
        }
        
        /// <summary>
        /// Последний редактор объекта.
        /// </summary>
        // *** Start programmer edit section *** (Инспектор.Editor CustomAttributes)

        // *** End programmer edit section *** (Инспектор.Editor CustomAttributes)
        [StrLen(255)]
        public virtual string Editor
        {
            get
            {
                // *** Start programmer edit section *** (Инспектор.Editor Get start)

                // *** End programmer edit section *** (Инспектор.Editor Get start)
                string result = this.fEditor;
                // *** Start programmer edit section *** (Инспектор.Editor Get end)

                // *** End programmer edit section *** (Инспектор.Editor Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Инспектор.Editor Set start)

                // *** End programmer edit section *** (Инспектор.Editor Set start)
                this.fEditor = value;
                // *** Start programmer edit section *** (Инспектор.Editor Set end)

                // *** End programmer edit section *** (Инспектор.Editor Set end)
            }
        }
        
        /// <summary>
        /// Инспектор.
        /// </summary>
        // *** Start programmer edit section *** (Инспектор.Район CustomAttributes)

        // *** End programmer edit section *** (Инспектор.Район CustomAttributes)
        [PropertyStorage(new string[] {
                "Район"})]
        public virtual TeploCorp.TeploUchet.Район Район
        {
            get
            {
                // *** Start programmer edit section *** (Инспектор.Район Get start)

                // *** End programmer edit section *** (Инспектор.Район Get start)
                TeploCorp.TeploUchet.Район result = this.fРайон;
                // *** Start programmer edit section *** (Инспектор.Район Get end)

                // *** End programmer edit section *** (Инспектор.Район Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Инспектор.Район Set start)

                // *** End programmer edit section *** (Инспектор.Район Set start)
                this.fРайон = value;
                // *** Start programmer edit section *** (Инспектор.Район Set end)

                // *** End programmer edit section *** (Инспектор.Район Set end)
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
                    return ICSSoft.STORMNET.Information.GetView("AuditView", typeof(TeploCorp.TeploUchet.Инспектор));
                }
            }
            
            /// <summary>
            /// "ИнспекторE" view.
            /// </summary>
            public static ICSSoft.STORMNET.View ИнспекторE
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("ИнспекторE", typeof(TeploCorp.TeploUchet.Инспектор));
                }
            }
            
            /// <summary>
            /// "ИнспекторL" view.
            /// </summary>
            public static ICSSoft.STORMNET.View ИнспекторL
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("ИнспекторL", typeof(TeploCorp.TeploUchet.Инспектор));
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
            public static bool UpdateAudit = false;
            
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
