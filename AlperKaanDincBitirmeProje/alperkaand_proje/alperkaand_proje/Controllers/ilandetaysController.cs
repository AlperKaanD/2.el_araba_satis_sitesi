using alperkaand_proje.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace alperkaand_proje.Controllers
{
    public class ilandetaysController : Controller
    {
        deneme2_projeEntities db = new deneme2_projeEntities();

        public ilandetay ilani_getir()
        {
            ilandetay ilanimiz = (ilandetay)Session["ilanim"];
            if (ilanimiz == null)//sessioda daha önceden sepet yok 1 .kez yani ilk üründe çalışır
            {
                ilanimiz = new ilandetay();
                Session["ilanim"] = ilanimiz;
            }
            return ilanimiz;
        }
        public ActionResult ilan_detay()
        {
            return View(ilani_getir());
        }
        public ActionResult ilan_ekle(int? ilan_no)
        {
            

            var eklenecek_ilan = db.ilan_goster.FirstOrDefault(x => x.ilan_no == ilan_no);
            if (eklenecek_ilan != null)
            {
                ilani_getir().arac_getir(eklenecek_ilan);
            }
            else
                return HttpNotFound();
            return RedirectToAction("ilan_detay");
        }
        public ActionResult sepeti_temizle()
        {
            ilani_getir().sepeti_temizle();
            return RedirectToAction("Index");
        }
    }
}