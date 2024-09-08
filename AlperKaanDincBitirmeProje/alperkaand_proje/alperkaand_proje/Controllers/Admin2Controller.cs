using alperkaand_proje.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace alperkaand_proje.Controllers
{
   
    public class Admin2Controller : Controller
    {
        deneme2_projeEntities db = new deneme2_projeEntities();
        // GET: Admin2
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ilan_list()
        {
            var ilan_goster = db.ilan_goster.Include(i => i.tasit_turleri).Include(i => i.uretim_yili).Include(i => i.ilceler).Include(i => i.kasa_tipleri).Include(i => i.tasit_markalari).Include(i => i.tasit_modelleri).Include(i => i.motor_gucleri).Include(i => i.motor_hacimleri).Include(i => i.renkler).Include(i => i.sehirler).Include(i => i.uyeler).Include(i => i.varyantlar).Include(i => i.vites_tipi).Include(i => i.yakit_tipleri).ToList();
            return View(ilan_goster);
        }
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ilan_goster ilan_goster = await db.ilan_goster.FindAsync(id);
            if (ilan_goster == null)
            {
                return HttpNotFound();
            }
            ViewBag.tas_tur_id = new SelectList(db.tasit_turleri, "tas_tur_no", "tas_tur_adi", ilan_goster.tas_tur_id);
            ViewBag.uretim_yil_id = new SelectList(db.uretim_yili, "uretim_yili_no", "uretim_yili_no", ilan_goster.uretim_yil_id);
            ViewBag.ilce_id = new SelectList(db.ilceler, "ilce_no", "ilce_adi", ilan_goster.ilce_id);
            ViewBag.kasa_tip_id = new SelectList(db.kasa_tipleri, "kasa_tip_no", "kasa_tipi", ilan_goster.kasa_tip_id);
            ViewBag.tas_marka_id = new SelectList(db.tasit_markalari, "tas_marka_no", "tas_marka_adi", ilan_goster.tas_marka_id);
            ViewBag.tas_model_id = new SelectList(db.tasit_modelleri, "tas_model_no", "tas_model_ad", ilan_goster.tas_model_id);
            ViewBag.motor_gucu_id = new SelectList(db.motor_gucleri, "motor_gucu_no", "motor_gucu_no", ilan_goster.motor_gucu_id);
            ViewBag.motor_hacmi_id = new SelectList(db.motor_hacimleri, "motor_hacmi_no", "motor_hacmi", ilan_goster.motor_hacmi_id);
            ViewBag.renk_id = new SelectList(db.renkler, "renk_no", "renk", ilan_goster.renk_id);
            ViewBag.plaka_id = new SelectList(db.sehirler, "plaka", "sehir_adi", ilan_goster.plaka_id);
            ViewBag.uyeid = new SelectList(db.uyeler, "uyeno", "kuladi", ilan_goster.uyeid);
            ViewBag.varyant_id = new SelectList(db.varyantlar, "varyant_no", "varyant_ad", ilan_goster.varyant_id);
            ViewBag.vites_tip_id = new SelectList(db.vites_tipi, "vites_tip_no", "vites_tip", ilan_goster.vites_tip_id);
            ViewBag.yakit_tipi_id = new SelectList(db.yakit_tipleri, "yakit_tipi_no", "yakit_tip", ilan_goster.yakit_tipi_id);
            return View(ilan_goster);
        }

        // POST: ilan_goster/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "ilan_no,ilan_tarihi,FotoURL,uyeid,plaka_id,ilce_id,tas_marka_id,tas_model_id,fiyat,km,yakit_tipi_id,vites_tip_id,renk_id,motor_gucu_id,motor_hacmi_id,kasa_tip_id,acıklama,varyant_id,takas,tas_tur_id,uretim_yil_id,ilan_basligi")] ilan_goster ilan_goster)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ilan_goster).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("ilan_list");
            }
            ViewBag.tas_tur_id = new SelectList(db.tasit_turleri, "tas_tur_no", "tas_tur_adi", ilan_goster.tas_tur_id);
            ViewBag.uretim_yil_id = new SelectList(db.uretim_yili, "uretim_yili_no", "uretim_yili_no", ilan_goster.uretim_yil_id);
            ViewBag.ilce_id = new SelectList(db.ilceler, "ilce_no", "ilce_adi", ilan_goster.ilce_id);
            ViewBag.kasa_tip_id = new SelectList(db.kasa_tipleri, "kasa_tip_no", "kasa_tipi", ilan_goster.kasa_tip_id);
            ViewBag.tas_marka_id = new SelectList(db.tasit_markalari, "tas_marka_no", "tas_marka_adi", ilan_goster.tas_marka_id);
            ViewBag.tas_model_id = new SelectList(db.tasit_modelleri, "tas_model_no", "tas_model_ad", ilan_goster.tas_model_id);
            ViewBag.motor_gucu_id = new SelectList(db.motor_gucleri, "motor_gucu_no", "motor_gucu_no", ilan_goster.motor_gucu_id);
            ViewBag.motor_hacmi_id = new SelectList(db.motor_hacimleri, "motor_hacmi_no", "motor_hacmi", ilan_goster.motor_hacmi_id);
            ViewBag.renk_id = new SelectList(db.renkler, "renk_no", "renk", ilan_goster.renk_id);
            ViewBag.plaka_id = new SelectList(db.sehirler, "plaka", "sehir_adi", ilan_goster.plaka_id);
            ViewBag.uyeid = new SelectList(db.uyeler, "uyeno", "kuladi", ilan_goster.uyeid);
            ViewBag.varyant_id = new SelectList(db.varyantlar, "varyant_no", "varyant_ad", ilan_goster.varyant_id);
            ViewBag.vites_tip_id = new SelectList(db.vites_tipi, "vites_tip_no", "vites_tip", ilan_goster.vites_tip_id);
            ViewBag.yakit_tipi_id = new SelectList(db.yakit_tipleri, "yakit_tipi_no", "yakit_tip", ilan_goster.yakit_tipi_id);
            return View(ilan_goster);
        }

        // GET: ilan_goster/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ilan_goster ilan_goster = await db.ilan_goster.FindAsync(id);
            if (ilan_goster == null)
            {
                return HttpNotFound();
            }
            return View(ilan_goster);
        }

        // POST: ilan_goster/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            ilan_goster ilan_goster = await db.ilan_goster.FindAsync(id);
            db.ilan_goster.Remove(ilan_goster);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

    }
}