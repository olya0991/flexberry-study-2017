﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NewPlatform.RecordBookBL
{
    using System;
    using System.Xml;
    using ICSSoft.STORMNET;
    
    
    // *** Start programmer edit section *** (Using statements)

    // *** End programmer edit section *** (Using statements)


    /// <summary>
    /// Преподаватель.
    /// </summary>
    // *** Start programmer edit section *** (Преподаватель CustomAttributes)

    // *** End programmer edit section *** (Преподаватель CustomAttributes)
    [AutoAltered()]
    [ICSSoft.STORMNET.NotStored(false)]
    [AccessType(ICSSoft.STORMNET.AccessType.none)]
    [View("ПреподавательE", new string[] {
            "Фамилия as \'Фамилия\'",
            "Имя as \'Имя\'",
            "Отчество as \'Отчество\'",
            "ДатаРождения as \'Дата рождения\'",
            "Логин as \'Логин\'",
            "ФИО as \'ФИО\'"})]
    [View("ПреподавательL", new string[] {
            "Фамилия as \'Фамилия\'",
            "Имя as \'Имя\'",
            "Отчество as \'Отчество\'",
            "ДатаРождения as \'Дата рождения\'",
            "Логин as \'Логин\'",
            "ФИО as \'ФИО\'"})]
    public class Преподаватель : NewPlatform.RecordBookBL.Личность
    {
        
        // *** Start programmer edit section *** (Преподаватель CustomMembers)

        // *** End programmer edit section *** (Преподаватель CustomMembers)

        
        /// <summary>
        /// Class views container.
        /// </summary>
        public class Views
        {
            
            /// <summary>
            /// "ПреподавательE" view.
            /// </summary>
            public static ICSSoft.STORMNET.View ПреподавательE
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("ПреподавательE", typeof(NewPlatform.RecordBookBL.Преподаватель));
                }
            }
            
            /// <summary>
            /// "ПреподавательL" view.
            /// </summary>
            public static ICSSoft.STORMNET.View ПреподавательL
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("ПреподавательL", typeof(NewPlatform.RecordBookBL.Преподаватель));
                }
            }
        }
    }
}
