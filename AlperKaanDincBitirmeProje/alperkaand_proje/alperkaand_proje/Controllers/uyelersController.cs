using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using alperkaand_proje.Models;
using System.IO;

namespace alperkaand_proje.Controllers
{
    public class uyelersController : Controller
    {
        private deneme2_projeEntities db = new deneme2_projeEntities();

        
  

        // GET: uyelers/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            uyeler uyeler = await db.uyeler.FindAsync(id);
            if (uyeler == null)
            {
                return HttpNotFound();
            }
            return View(uyeler);
        }

        // GET: uyelers/Create
        public ActionResult Create()
        {
            ViewBag.ilce_id = new SelectList(db.ilceler, "ilce_no", "ilce_adi");
            ViewBag.plaka_id = new SelectList(db.sehirler, "plaka", "sehir_adi");
            return View();
        }

        // POST: uyelers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "uyeno,kuladi,sifre,uye_TC,adsoyad,Email,Telefon,plaka_id,ilce_id,KayitTarihi")] uyeler uyeler, HttpPostedFileBase file)
        {
            try
            {
                if (ModelState.IsValid)
                {

                    string foto_adi = "profilfotoyok.png";
                    if (file != null && file.ContentLength > 0)
                    {
                        string uzanti = Path.GetExtension(file.FileName);
                        if (uzanti.Equals(".jpg") || uzanti.Equals(".png"))
                        {
                            int son_uye_no = db.uyeler.Max(x => x.uyeno);
                            son_uye_no += 1;
                            foto_adi = Path.GetFileName(file.FileName);
                            string yol = Path.Combine(Server.MapPath("~/images") + son_uye_no + foto_adi);
                            file.SaveAs(yol);
                            uyeler.uye_foto = foto_adi;
                            db.uyeler.Add(uyeler);
                            await db.SaveChangesAsync();

                            ViewBag.durum = "Fotoğraflar Eklendi ve Kayıt Başarılı";
                        }
                        else
                        {
                            ViewBag.durum = "Resim Dosyası Seçmelisiniz.(.png,.jpeg uzantili dosyalar)";
                        }



                    }
                    else
                    {
                        ViewBag.durum = "Fotoğraf Eklenmedi ve Kayıt Başarılı";
                        uyeler.uye_foto = foto_adi;
                        db.uyeler.Add(uyeler);
                        await db.SaveChangesAsync();
                    }


                    return RedirectToAction("Index");
                }    
                    db.uyeler.Add(uyeler);
                    await db.SaveChangesAsync();
                    return RedirectToAction("login_giris", "Home");
                
            }
            catch(Exception hata)
            {
                if (hata.InnerException.ToString().IndexOf("uk_uyeler_kuladi") != -1)
                {
                    ViewBag.kayit_msj = "Kayıt Başarısız kullanıcı mevcud değiştirin";
                    
                }
                else
                    ViewBag.kayit_msj = "Kayıt Başarısız aynı email mevcud değiştirin";
            }

            ViewBag.ilce_id = new SelectList(db.ilceler, "ilce_no", "ilce_adi", uyeler.ilce_id);
            ViewBag.plaka_id = new SelectList(db.sehirler, "plaka", "sehir_adi", uyeler.plaka_id);
            return View(uyeler);
        }

        // GET: uyelers/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            uyeler uyeler = await db.uyeler.FindAsync(id);
            if (uyeler == null)
            {
                return HttpNotFound();
            }
            
            ViewBag.ilce_id = new SelectList(db.ilceler, "ilce_no", "ilce_adi", uyeler.ilce_id);
            ViewBag.plaka_id = new SelectList(db.sehirler, "plaka", "sehir_adi", uyeler.plaka_id);
            return View(uyeler);
        }

        // POST: uyelers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "uyeno,kuladi,sifre,uye_TC,adsoyad,Email,Telefon,plaka_id,ilce_id,KayitTarihi")] uyeler uyeler)
        {

            if (ModelState.IsValid)
            {
                db.Entry(uyeler).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.ilce_id = new SelectList(db.ilceler, "ilce_no", "ilce_adi", uyeler.ilce_id);
            ViewBag.plaka_id = new SelectList(db.sehirler, "plaka", "sehir_adi", uyeler.plaka_id);
            return View(uyeler);
        }

        // GET: uyelers/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            uyeler uyeler = await db.uyeler.FindAsync(id);
            if (uyeler == null)
            {
                return HttpNotFound();
            }
            return View(uyeler);
        }

        // POST: uyelers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            uyeler uyeler = await db.uyeler.FindAsync(id);
            db.uyeler.Remove(uyeler);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        public JsonResult ilcegetir(int p)
        {
            var ilceler = (from x in db.ilceler
                           join y in db.sehirler on x.sehirler.plaka equals y.plaka
                           where x.sehirler.plaka == p
                           select new
                           {
                               Text = x.ilce_adi,
                               Value = x.ilce_no.ToString()

                           }).ToList();
            return Json(ilceler, JsonRequestBehavior.AllowGet);
        }
    }    
}
