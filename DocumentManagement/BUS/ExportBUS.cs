﻿using Common.Common;
using DocumentManagement.Common;
using DocumentManagement.DAL;
using DocumentManagement.Model.Entity;
using DocumentManagement.Models.DTO;
using DocumentManagement.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DocumentManagement.BUS
{
    public class ExportBUS
    {
        private ExportDAL exportDAL = ExportDAL.GetExportDALInstance;
        private ExportBUS() { }

        private static volatile ExportBUS _instance;

        static object key = new object();

        public static ExportBUS GetExportBUSInstance
        {
            get
            {
                lock (key)
                {
                    if (_instance == null)
                    {
                        _instance = new ExportBUS();
                    }
                }

                return _instance;
            }

            private set
            {
                _instance = value;
            }
        }
        public async Task<ReturnResult<Export>> GetPagingWithSearchResults(BaseCondition<Export> condition)
        {
            var result = await exportDAL.GetPagingWithSearchResults(condition);
            return result;
        }

        public async Task<ReturnResult<DataStatisticsDTO>> GetDataStatisticsPagingWithSearchResults(BaseCondition<FilterDTO> condition)
        {
            var result = await exportDAL.GetDataStatisticsPagingWithSearchResults(condition);
            return result;
        }

        public async Task<ReturnResult<DataStatisticsDTO>> GetDataStatisticss()
        {
            var result = await exportDAL.GetDataStatisticss();
            return result;
        }
    }
}
