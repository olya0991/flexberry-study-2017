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
    
    
    // *** Start programmer edit section *** (Using statements)

    // *** End programmer edit section *** (Using statements)


    /// <summary>
    /// Студент.
    /// </summary>
    // *** Start programmer edit section *** (Студент CustomAttributes)

    // *** End programmer edit section *** (Студент CustomAttributes)
    [BusinessServer("IIS.Product_58826.СтудентБС, Product_58826(BusinessServers)", ICSSoft.STORMNET.Business.DataServiceObjectEvents.OnAllEvents)]
    [AutoAltered()]
    [AccessType(ICSSoft.STORMNET.AccessType.none)]
    [View("СтудентE", new string[] {
            "Фамилия as \'Фамилия\'",
            "Имя as \'Имя\'",
            "Отчество as \'Отчество\'",
            "ДатаРождения as \'Дата рождения\'",
            "Логин as \'Логин\'",
            "Пароль as \'Пароль\'",
            "АдресПочты as \'e-mail \'",
            "ФИО",
            "Обучается",
            "КоличествоПрограмм as \'Кол-во программ\'"}, Hidden=new string[] {
            "ФИО"})]
    [View("СтудентL", new string[] {
            "Фамилия as \'Фамилия\'",
            "Имя as \'Имя\'",
            "Отчество as \'Отчество\'",
            "ДатаРождения as \'Дата рождения\'",
            "Логин as \'Логин\'",
            "Пароль as \'Пароль\'",
            "ФИО as \'ФИО\'",
            "АдресПочты as \'e-mail\'",
            "Обучается",
            "КоличествоПрограмм as \'Общее кол-во выбранных программ\'"})]
    public class Студент : ICSSoft.STORMNET.DataObject
    {
        
        private string fФамилия;
        
        private string fИмя;
        
        private string fОтчество;
        
        private System.DateTime fДатаРождения;
        
        private string fЛогин;
        
        private string fПароль;
        
        private string fАдресПочты;
        
        private bool fОбучается = true;
        
        private int fКоличествоПрограмм = 0;
        
        // *** Start programmer edit section *** (Студент CustomMembers)

        // *** End programmer edit section *** (Студент CustomMembers)

        
        /// <summary>
        /// Фамилия.
        /// </summary>
        // *** Start programmer edit section *** (Студент.Фамилия CustomAttributes)

        // *** End programmer edit section *** (Студент.Фамилия CustomAttributes)
        [StrLen(255)]
        [NotNull()]
        public virtual string Фамилия
        {
            get
            {
                // *** Start programmer edit section *** (Студент.Фамилия Get start)

                // *** End programmer edit section *** (Студент.Фамилия Get start)
                string result = this.fФамилия;
                // *** Start programmer edit section *** (Студент.Фамилия Get end)

                // *** End programmer edit section *** (Студент.Фамилия Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Студент.Фамилия Set start)

                // *** End programmer edit section *** (Студент.Фамилия Set start)
                this.fФамилия = value;
                // *** Start programmer edit section *** (Студент.Фамилия Set end)

                // *** End programmer edit section *** (Студент.Фамилия Set end)
            }
        }
        
        /// <summary>
        /// Имя.
        /// </summary>
        // *** Start programmer edit section *** (Студент.Имя CustomAttributes)

        // *** End programmer edit section *** (Студент.Имя CustomAttributes)
        [StrLen(255)]
        [NotNull()]
        public virtual string Имя
        {
            get
            {
                // *** Start programmer edit section *** (Студент.Имя Get start)

                // *** End programmer edit section *** (Студент.Имя Get start)
                string result = this.fИмя;
                // *** Start programmer edit section *** (Студент.Имя Get end)

                // *** End programmer edit section *** (Студент.Имя Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Студент.Имя Set start)

                // *** End programmer edit section *** (Студент.Имя Set start)
                this.fИмя = value;
                // *** Start programmer edit section *** (Студент.Имя Set end)

                // *** End programmer edit section *** (Студент.Имя Set end)
            }
        }
        
        /// <summary>
        /// Отчество.
        /// </summary>
        // *** Start programmer edit section *** (Студент.Отчество CustomAttributes)

        // *** End programmer edit section *** (Студент.Отчество CustomAttributes)
        [StrLen(255)]
        [NotNull()]
        public virtual string Отчество
        {
            get
            {
                // *** Start programmer edit section *** (Студент.Отчество Get start)

                // *** End programmer edit section *** (Студент.Отчество Get start)
                string result = this.fОтчество;
                // *** Start programmer edit section *** (Студент.Отчество Get end)

                // *** End programmer edit section *** (Студент.Отчество Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Студент.Отчество Set start)

                // *** End programmer edit section *** (Студент.Отчество Set start)
                this.fОтчество = value;
                // *** Start programmer edit section *** (Студент.Отчество Set end)

                // *** End programmer edit section *** (Студент.Отчество Set end)
            }
        }
        
        /// <summary>
        /// ДатаРождения.
        /// </summary>
        // *** Start programmer edit section *** (Студент.ДатаРождения CustomAttributes)

        // *** End programmer edit section *** (Студент.ДатаРождения CustomAttributes)
        [NotNull()]
        public virtual System.DateTime ДатаРождения
        {
            get
            {
                // *** Start programmer edit section *** (Студент.ДатаРождения Get start)

                // *** End programmer edit section *** (Студент.ДатаРождения Get start)
                System.DateTime result = this.fДатаРождения;
                // *** Start programmer edit section *** (Студент.ДатаРождения Get end)

                // *** End programmer edit section *** (Студент.ДатаРождения Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Студент.ДатаРождения Set start)

                // *** End programmer edit section *** (Студент.ДатаРождения Set start)
                this.fДатаРождения = value;
                // *** Start programmer edit section *** (Студент.ДатаРождения Set end)

                // *** End programmer edit section *** (Студент.ДатаРождения Set end)
            }
        }
        
        /// <summary>
        /// Логин.
        /// </summary>
        // *** Start programmer edit section *** (Студент.Логин CustomAttributes)

        // *** End programmer edit section *** (Студент.Логин CustomAttributes)
        [StrLen(255)]
        [NotNull()]
        public virtual string Логин
        {
            get
            {
                // *** Start programmer edit section *** (Студент.Логин Get start)

                // *** End programmer edit section *** (Студент.Логин Get start)
                string result = this.fЛогин;
                // *** Start programmer edit section *** (Студент.Логин Get end)

                // *** End programmer edit section *** (Студент.Логин Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Студент.Логин Set start)

                // *** End programmer edit section *** (Студент.Логин Set start)
                this.fЛогин = value;
                // *** Start programmer edit section *** (Студент.Логин Set end)

                // *** End programmer edit section *** (Студент.Логин Set end)
            }
        }
        
        /// <summary>
        /// Пароль.
        /// </summary>
        // *** Start programmer edit section *** (Студент.Пароль CustomAttributes)

        // *** End programmer edit section *** (Студент.Пароль CustomAttributes)
        [StrLen(255)]
        [NotNull()]
        public virtual string Пароль
        {
            get
            {
                // *** Start programmer edit section *** (Студент.Пароль Get start)

                // *** End programmer edit section *** (Студент.Пароль Get start)
                string result = this.fПароль;
                // *** Start programmer edit section *** (Студент.Пароль Get end)

                // *** End programmer edit section *** (Студент.Пароль Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Студент.Пароль Set start)

                // *** End programmer edit section *** (Студент.Пароль Set start)
                this.fПароль = value;
                // *** Start programmer edit section *** (Студент.Пароль Set end)

                // *** End programmer edit section *** (Студент.Пароль Set end)
            }
        }
        
        /// <summary>
        /// ФИО.
        /// </summary>
        // *** Start programmer edit section *** (Студент.ФИО CustomAttributes)

        // *** End programmer edit section *** (Студент.ФИО CustomAttributes)
        [ICSSoft.STORMNET.NotStored()]
        [StrLen(255)]
        [DataServiceExpression(typeof(ICSSoft.STORMNET.Business.MSSQLDataService), "@Фамилия@+\' \'+@Имя@+\' \'+@Отчество@")]
        public virtual string ФИО
        {
            get
            {
                // *** Start programmer edit section *** (Студент.ФИО Get)
                return null;
                // *** End programmer edit section *** (Студент.ФИО Get)
            }
            set
            {
                // *** Start programmer edit section *** (Студент.ФИО Set)

                // *** End programmer edit section *** (Студент.ФИО Set)
            }
        }
        
        /// <summary>
        /// АдресПочты.
        /// </summary>
        // *** Start programmer edit section *** (Студент.АдресПочты CustomAttributes)

        // *** End programmer edit section *** (Студент.АдресПочты CustomAttributes)
        [StrLen(255)]
        [NotNull()]
        public virtual string АдресПочты
        {
            get
            {
                // *** Start programmer edit section *** (Студент.АдресПочты Get start)

                // *** End programmer edit section *** (Студент.АдресПочты Get start)
                string result = this.fАдресПочты;
                // *** Start programmer edit section *** (Студент.АдресПочты Get end)

                // *** End programmer edit section *** (Студент.АдресПочты Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Студент.АдресПочты Set start)

                // *** End programmer edit section *** (Студент.АдресПочты Set start)
                this.fАдресПочты = value;
                // *** Start programmer edit section *** (Студент.АдресПочты Set end)

                // *** End programmer edit section *** (Студент.АдресПочты Set end)
            }
        }
        
        /// <summary>
        /// Обучается.
        /// </summary>
        // *** Start programmer edit section *** (Студент.Обучается CustomAttributes)

        // *** End programmer edit section *** (Студент.Обучается CustomAttributes)
        public virtual bool Обучается
        {
            get
            {
                // *** Start programmer edit section *** (Студент.Обучается Get start)

                // *** End programmer edit section *** (Студент.Обучается Get start)
                bool result = this.fОбучается;
                // *** Start programmer edit section *** (Студент.Обучается Get end)

                // *** End programmer edit section *** (Студент.Обучается Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Студент.Обучается Set start)

                // *** End programmer edit section *** (Студент.Обучается Set start)
                this.fОбучается = value;
                // *** Start programmer edit section *** (Студент.Обучается Set end)

                // *** End programmer edit section *** (Студент.Обучается Set end)
            }
        }
        
        /// <summary>
        /// КоличествоПрограмм.
        /// </summary>
        // *** Start programmer edit section *** (Студент.КоличествоПрограмм CustomAttributes)

        // *** End programmer edit section *** (Студент.КоличествоПрограмм CustomAttributes)
        public virtual int КоличествоПрограмм
        {
            get
            {
                // *** Start programmer edit section *** (Студент.КоличествоПрограмм Get start)

                // *** End programmer edit section *** (Студент.КоличествоПрограмм Get start)
                int result = this.fКоличествоПрограмм;
                // *** Start programmer edit section *** (Студент.КоличествоПрограмм Get end)

                // *** End programmer edit section *** (Студент.КоличествоПрограмм Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Студент.КоличествоПрограмм Set start)

                // *** End programmer edit section *** (Студент.КоличествоПрограмм Set start)
                this.fКоличествоПрограмм = value;
                // *** Start programmer edit section *** (Студент.КоличествоПрограмм Set end)

                // *** End programmer edit section *** (Студент.КоличествоПрограмм Set end)
            }
        }
        
        /// <summary>
        /// Class views container.
        /// </summary>
        public class Views
        {
            
            /// <summary>
            /// "СтудентE" view.
            /// </summary>
            public static ICSSoft.STORMNET.View СтудентE
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("СтудентE", typeof(IIS.Product_58826.Студент));
                }
            }
            
            /// <summary>
            /// "СтудентL" view.
            /// </summary>
            public static ICSSoft.STORMNET.View СтудентL
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("СтудентL", typeof(IIS.Product_58826.Студент));
                }
            }
        }
    }
}
