﻿//using DocumentManagement.Common;
//using DocumentManagement.Models.Entity.Document;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Threading.Tasks;

//namespace DocumentManagement.BUS
//{
//    public class DocumentBUS
//    {
//        private DocumentDAL _documentDAL;
//        private DocumentDAL DocumentDAL
//        {
//            get
//            {
//                _documentDAL = new DocumentDAL();
//                return _documentDAL;
//            }
//        }
//        public ReturnResult<Document> GetAllDocument()
//        {
//            var result = DocumentDAL.GetAllDocument();
//            return result;
//        }

//        public ReturnResult<Document> CreateDocument(Document document)
//        {
//            var result = DocumentDAL.CreateDocument(document);
//            return result;
//        }
//        public ReturnResult<Document> DeleteDocument(int documentId)
//        {
//            var result = DocumentDAL.DeleteDocument(documentId);
//            return result;
//        }
//        public ReturnResult<Document> UpdateDocument(Document document)
//        {
//            var result = DocumentDAL.UpdateDocument(document);
//            return result;
//        }
//    }
//}
