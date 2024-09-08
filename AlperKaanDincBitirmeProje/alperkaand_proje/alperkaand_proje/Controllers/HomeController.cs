using alperkaand_proje.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using PagedList;



namespace alperkaand_proje.Controllers
{
     
    public class HomeController : Controller
    {
        deneme2_projeEntities db = new deneme2_projeEntities();
        public ActionResult Index( string msj)
        {
            ViewBag.msj = msj;
        
            var ilan_goster = db.ilan_goster.Include(i => i.tasit_turleri).Include(i => i.uretim_yili).Include(i => i.ilceler).Include(i => i.kasa_tipleri).Include(i => i.tasit_markalari).Include(i => i.tasit_modelleri).Include(i => i.motor_gucleri).Include(i => i.motor_hacimleri).Include(i => i.renkler).Include(i => i.sehirler).Include(i => i.uyeler).Include(i => i.varyantlar).Include(i => i.vites_tipi).Include(i => i.yakit_tipleri).ToList();
            return View(ilan_goster);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult login_giris()
        {
            return View();
        }
        [HttpPost]
        public async Task<ActionResult> login_giris(uyeler formdan_gelen_uye)
        {
            var uyem = await db.uyeler.FirstOrDefaultAsync(x => x.kuladi == formdan_gelen_uye.kuladi && x.sifre == formdan_gelen_uye.sifre);
            string msj = "";
            if (uyem != null)
            {
                Session["uyem"] = uyem;
            }
            else
            {
                Session["uyem"] = null;
                msj = "Yanlış Kullanıcı Adı veya Şifre";
            }
            return RedirectToAction("Index","uyeAdmin", new { msj });
        }


        public ActionResult guv_cik()
        {

            Session.RemoveAll();
            Session.Abandon();
            return RedirectToAction("Index", "Home");
        }
        public ActionResult dene()
        {
            return View();
        }
        public ActionResult admin_giris()
        {
            return View();
        }
        [HttpPost]
        public async Task<ActionResult> admin_giris(admin gelen_admin)
        {
            var adminim = await db.admin.FirstOrDefaultAsync(x => x.kuladi == gelen_admin.kuladi && x.sifre == gelen_admin.sifre);
            string msj = "";
            if (adminim != null)
            {
                Session["adminim"] = adminim;
            }
            else
            {
                Session["adminim"] = null;
                msj = "Yanlış Kullanıcı Adı veya Şifre";
            }
            return RedirectToAction("Index", "Admin", new { msj });
        }


        public ActionResult admin_cik()
        {

            Session.RemoveAll();
            Session.Abandon();
            return RedirectToAction("Index", "ilan_goster");
        }

      

    }
}

