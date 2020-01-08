﻿//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Threading.Tasks;
//using DocumentManagement.BUS;
//using DocumentManagement.Models.Entity.Document;
//using Microsoft.AspNetCore.Http;
//using Microsoft.AspNetCore.Mvc;

//namespace DocumentManagement.Controllers
//{
//    [Route("api/[controller]/[action]")]
//    [ApiController]
//    public class DocumentController : ControllerBase
//    {
//        [HttpGet]
//        public IActionResult GetAllDocument()
//        {
//            DocumentBUS documentBUS = new DocumentBUS();
//            var result = documentBUS.GetAllDocument();
//            return Ok(result);
//        }

//        [HttpPost]
//        public IActionResult CreateDocument(Document document)
//        {
//            DocumentBUS documentBUS = new DocumentBUS();
//            var result = documentBUS.CreateDocument(document);
//            return Ok(result);
//        }

//        [HttpPost]
//        public IActionResult UpdateDocument(Document document)
//        {
//            DocumentBUS documentBUS = new DocumentBUS();
//            var result = documentBUS.UpdateDocument(document);
//            return Ok(result);
//        }

//        [HttpPost]
//        public IActionResult DeleteDocument(int documentId)
//        {
//            DocumentBUS documentBUS = new DocumentBUS();
//            var result = documentBUS.DeleteDocument(documentId);
//            return Ok(result);
//        }
//    }
//}