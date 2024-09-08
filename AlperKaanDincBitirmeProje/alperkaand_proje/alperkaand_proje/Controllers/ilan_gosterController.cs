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
using PagedList;
using PagedList.Mvc;

namespace alperkaand_proje.Controllers
{
    public class ilan_gosterController : Controller
    {
        private deneme2_projeEntities db = new deneme2_projeEntities();

        // GET: ilan_goster
        public ActionResult Index()
        {
            ViewBag.Sehirler = db.sehirler.ToList();
            ViewBag.Ilceler = db.ilceler.ToList();
            ViewBag.vites=db.vites_tipi.ToList();
            ViewBag.yakit=db.yakit_tipleri.ToList();

            var ilan_goster = db.ilan_goster.Include(i => i.tasit_turleri).Include(i => i.uretim_yili).Include(i => i.ilceler).Include(i => i.kasa_tipleri).Include(i => i.tasit_markalari).Include(i => i.tasit_modelleri).Include(i => i.motor_gucleri).Include(i => i.motor_hacimleri).Include(i => i.renkler).Include(i => i.sehirler).Include(i => i.uyeler).Include(i => i.varyantlar).Include(i => i.vites_tipi).Include(i => i.yakit_tipleri).ToList();
            return View(ilan_goster);
        }

        // GET: ilan_goster/Details/5
        public async Task<ActionResult> Details(int? id)
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

        // GET: ilan_goster/Create
        public ActionResult Create(int? id)
        {
            if (Session["uyem"] == null)
            {
                return RedirectToAction("login_giris", "Home");
            }

            var uyem = (uyeler)Session["uyem"];

            // Üye ID'yi model veya ViewBag ile view'a gönderin.
            var ilan_goster = new ilan_goster
            {
                uyeid = uyem.uyeno // Uye ID'yi burada modelinize atıyorsunuz.
            };

            ViewBag.tas_tur_id = new SelectList(db.tasit_turleri, "tas_tur_no", "tas_tur_adi");
            ViewBag.uretim_yil_id = new SelectList(db.uretim_yili, "uretim_yili_no", "yillar");
            ViewBag.ilce_id = new SelectList(db.ilceler, "ilce_no", "ilce_adi");
            ViewBag.kasa_tip_id = new SelectList(db.kasa_tipleri, "kasa_tip_no", "kasa_tipi");
            ViewBag.tas_marka_id = new SelectList(db.tasit_markalari, "tas_marka_no", "tas_marka_adi");
            ViewBag.tas_model_id = new SelectList(db.tasit_modelleri, "tas_model_no", "tas_model_ad");
            ViewBag.motor_gucu_id = new SelectList(db.motor_gucleri, "motor_gucu_no", "motor_gucu");
            ViewBag.motor_hacmi_id = new SelectList(db.motor_hacimleri, "motor_hacmi_no", "motor_hacmi");
            ViewBag.renk_id = new SelectList(db.renkler, "renk_no", "renk");
            ViewBag.plaka_id = new SelectList(db.sehirler, "plaka", "sehir_adi");
            ViewBag.varyant_id = new SelectList(db.varyantlar, "varyant_no", "varyant_ad");
            ViewBag.vites_tip_id = new SelectList(db.vites_tipi, "vites_tip_no", "vites_tip");
            ViewBag.yakit_tipi_id = new SelectList(db.yakit_tipleri, "yakit_tipi_no", "yakit_tip");

            return View(ilan_goster); // Modeli view'a gönderiyoruz.
        }


        // POST: ilan_goster/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "ilan_no,ilan_tarihi,FotoURL,uyeid,plaka_id,ilce_id,tas_marka_id,tas_model_id,fiyat,km,yakit_tipi_id,vites_tip_id,renk_id,motor_gucu_id,motor_hacmi_id,kasa_tip_id,acıklama,varyant_id,takas,tas_tur_id,uretim_yil_id,ilan_basligi")] ilan_goster ilan_goster, HttpPostedFileBase file)
        {

            if (Session["uyem"] == null)
            {
                return RedirectToAction("login_giris", "Home");
            }

            var uyem = (uyeler)Session["uyem"];
            ilan_goster.uyeid = uyem.uyeno; // Üye ID'yi tekrar Session'dan alıyoruz.

            if (ModelState.IsValid)
            {


                    string dosya_adi = "resimyok.png";
                    if (file != null && file.ContentLength > 0)
                    {
                        string uzanti = Path.GetExtension(file.FileName);
                        if (uzanti.Equals(".jpg") || uzanti.Equals(".png"))
                        {
                            int son_urun_no = db.ilan_goster.Max(x => x.ilan_no);
                            son_urun_no += 1;
                            dosya_adi = Path.GetFileName(file.FileName);
                            string yol = Path.Combine(Server.MapPath("~/images")+son_urun_no+ dosya_adi);
                            file.SaveAs(yol);
                            ilan_goster.FotoURL = dosya_adi;
                            db.ilan_goster.Add(ilan_goster);
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
                        ilan_goster.FotoURL = dosya_adi;
                        db.ilan_goster.Add(ilan_goster);
                        await db.SaveChangesAsync();
                    }

                  
                    return RedirectToAction("/uyeAdmin/ilanlarim_list/");
            }



            ViewBag.tas_tur_id = new SelectList(db.tasit_turleri, "tas_tur_no", "tas_tur_adi");
            ViewBag.uretim_yil_id = new SelectList(db.uretim_yili, "uretim_yili_no", "yillar");
            ViewBag.ilce_id = new SelectList(db.ilceler, "ilce_no", "ilce_adi");
            ViewBag.kasa_tip_id = new SelectList(db.kasa_tipleri, "kasa_tip_no", "kasa_tipi");
            ViewBag.tas_marka_id = new SelectList(db.tasit_markalari, "tas_marka_no", "tas_marka_adi");
            ViewBag.tas_model_id = new SelectList(db.tasit_modelleri, "tas_model_no", "tas_model_ad");
            ViewBag.motor_gucu_id = new SelectList(db.motor_gucleri, "motor_gucu_no", "motor_gucu");
            ViewBag.motor_hacmi_id = new SelectList(db.motor_hacimleri, "motor_hacmi_no", "motor_hacmi");
            ViewBag.renk_id = new SelectList(db.renkler, "renk_no", "renk");
            ViewBag.plaka_id = new SelectList(db.sehirler, "plaka", "sehir_adi");
            ViewBag.varyant_id = new SelectList(db.varyantlar, "varyant_no", "varyant_ad");
            ViewBag.vites_tip_id = new SelectList(db.vites_tipi, "vites_tip_no", "vites_tip");
            ViewBag.yakit_tipi_id = new SelectList(db.yakit_tipleri, "yakit_tipi_no", "yakit_tip");

            return View(ilan_goster);
        }

        // GET: ilan_goster/Edit/5
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
                return RedirectToAction("Index");
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
  
        public ActionResult FiyatFiltrele(decimal? minFiyat, decimal? maxFiyat, int? minTarih, int? maxTarih, int? minKM, int? maxKM, int? plaka_id, int? ilce_id, int? vites, int? yakit,int? sonGun)
        {
            var ilanlar = db.ilan_goster.AsQueryable();
            //FIYAT
            if (minFiyat.HasValue)
            {
                ilanlar = ilanlar.Where(i => i.fiyat >= minFiyat.Value);
            }

            if (maxFiyat.HasValue)
            {
                ilanlar = ilanlar.Where(i => i.fiyat <= maxFiyat.Value);
            }
            //TARIH
            if (minTarih.HasValue)
            {
                ilanlar=ilanlar.Where(t => t.uretim_yili.yillar >= minTarih.Value);
            }
            if (maxTarih.HasValue)
            {
                ilanlar=ilanlar.Where(t => t.uretim_yili.yillar <= maxTarih.Value);
            }
            //KM
            if (minKM.HasValue)
            {
                ilanlar = ilanlar.Where(k => k.km >= minKM.Value);
            }
            if (maxKM.HasValue)
            {
                ilanlar = ilanlar.Where(k => k.km <= maxKM.Value);
            }
            //Sehir ve Ilce
            if (plaka_id.HasValue)
            {
                ilanlar = ilanlar.Where(i => i.plaka_id == plaka_id.Value);
            }
            
            if (ilce_id.HasValue)
            {
                ilanlar = ilanlar.Where(i => i.ilce_id == ilce_id.Value);
            }
            //vites
            if (vites.HasValue)
            {
                ilanlar = ilanlar.Where(i => i.vites_tip_id == vites.Value);
            }
            //yakit
            if (yakit.HasValue)
            {
                ilanlar = ilanlar.Where(i => i.yakit_tipi_id == yakit.Value);
            }
            //tarih
            if (sonGun.HasValue)
            {
                var tarihKisit = DateTime.Now.AddDays(-sonGun.Value);
                ilanlar = ilanlar.Where(i => i.ilan_tarihi >= tarihKisit);
            }

            return PartialView("FiltrelenmisIlanlar", ilanlar.ToList());
        }
        public ActionResult kategori_doldur(int? id)
        {

            var kategori_listem = db.tasit_turleri.AsQueryable();
            if (id.HasValue)
            {
                kategori_listem = kategori_listem.Where(i => i.tas_tur_no <= id.Value);
            }
            return PartialView("_KategoriPartialView",kategori_listem);
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
        public JsonResult yilgetir(int y)
        {
            var uretim_yil = (from x in db.uretim_yili
                              join z in db.tasit_turleri on x.tasit_turleri.tas_tur_no equals z.tas_tur_no
                              where x.tasit_turleri.tas_tur_no == y
                              select new
                              {
                                  Text = x.yillar,
                                  Value = x.uretim_yili_no.ToString()

                              }).ToList();
            return Json(uretim_yil, JsonRequestBehavior.AllowGet);

        }
        public JsonResult markagetir(int m)
        {
            var tasit_marka = (from x in db.tasit_markalari
                               join y in db.uretim_yili on x.uretim_yili.uretim_yili_no equals y.uretim_yili_no
                               where x.uretim_yili.uretim_yili_no == m
                               select new
                               {
                                   Text = x.tas_marka_adi,
                                   Value = x.tas_marka_no.ToString()

                               }).ToList();
            return Json(tasit_marka, JsonRequestBehavior.AllowGet);

        }
        public JsonResult modelgetir(int n)
        {
            var tasit_model = (from x in db.tasit_modelleri
                               join y in db.tasit_markalari on x.tasit_markalari.tas_marka_no equals y.tas_marka_no
                               where x.tasit_markalari.tas_marka_no == n
                               select new
                               {
                                   Text = x.tas_model_ad,
                                   Value = x.tas_model_no.ToString()

                               }).ToList();
            return Json(tasit_model, JsonRequestBehavior.AllowGet);

        }
        public JsonResult varyantgetir(int v)
        {
            var varyant = (from x in db.varyantlar
                           join y in db.tasit_modelleri on x.tasit_modelleri.tas_model_no equals y.tas_model_no
                           where x.tasit_modelleri.tas_model_no == v
                           select new
                           {
                               Text = x.varyant_ad,
                               Value = x.varyant_no.ToString()

                           }).ToList();
            return Json(varyant, JsonRequestBehavior.AllowGet);

        }
    }


   
}
