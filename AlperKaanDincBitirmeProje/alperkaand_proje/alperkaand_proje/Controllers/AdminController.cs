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
using PagedList;

namespace alperkaand_proje.Controllers
{
    public class AdminController : Controller
    {
        deneme2_projeEntities db=new deneme2_projeEntities();
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult uyeler_list()
        {
            
            
               
                var uyeler = db.uyeler.Include(u => u.ilceler).Include(u => u.sehirler);
                return View( uyeler.ToList());
            
        }
        public async Task<ActionResult>Edit( int? id)
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
        public async Task<ActionResult>Edit([Bind(Include = "uyeno,kuladi,sifre,uye_TC,adsoyad,Email,Telefon,plaka_id,ilce_id,KayitTarihi")] uyeler uyeler)
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