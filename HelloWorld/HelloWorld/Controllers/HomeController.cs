using HelloWorld.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HelloWorld.Controllers
{
    public class HomeController : Controller
    {
        ZdContext zd = new ZdContext();
        public ActionResult Index()
        {
            ViewBag.message = ConfigurationManager.ConnectionStrings["ZdContext"].ConnectionString;
            return View(zd.Articles.ToList());
        }

        public ActionResult Show(string name)
        {
            // Debug.WriteLine(name);
            // var t = zd.t1.Create();
            // t.dateclick = (System.DateTime.Now).ToLocalTime();
            //// t.dateclick = System.DateTime.Now;
            // try
            // {
            //     zd.t1.Add(t);
            //     zd.SaveChanges();
            // }
            // catch (Exception) { ModelState.AddModelError("", "can not add it"); }

            // return Json(zd.t1.ToList(),JsonRequestBehavior.AllowGet);
            return View();
        }

        [HttpGet]
        public ActionResult Search(string key)
        {
            var list = new List<Article>();
            var a = zd.Articles.ToList();


            if (!a.Exists(r => r.Title.ToUpper().Contains(key.ToUpper())))
            {
                ViewBag.Message = "Sorry, Nothing found";
                return View(list);
            }
            list = zd.Articles.Where(r => r.Title.ToUpper().Contains(key.ToUpper())).ToList(); ViewBag.Message = "";
            return View(list);

        }


        protected override void Dispose(bool disposing)
        {
            zd.Dispose();
            base.Dispose(disposing);
        }

        [HttpGet]
        public ActionResult ArticleCreate()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ArticleCreate(string title, string body)
        {
            if (title != null && body != null && ModelState.IsValid)
            {
                Article newArticle = new Article();
                newArticle.Title = title;
                newArticle.Content = body;

                zd.Articles.Add(newArticle);
                zd.SaveChanges();

                return RedirectToAction("Index");
            }

            return View();
        }

        [HttpGet]
        public ActionResult ArticleView(int Id)
        {
            return View(zd.Articles.Find(Id));
        }

        public ActionResult AboutUs()
        {
            return View();
        }
    }
}
