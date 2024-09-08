using alperkaand_proje.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Entity.Infrastructure;
using System.Diagnostics;
using System.IO;
namespace alperkaand_proje.Controllers
{
    public class uyeAdminController : Controller
    {
        deneme2_projeEntities db = new deneme2_projeEntities();

        // GET: uyeAdmin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ilanlarim_list()
        {
            if (Session["uyem"] == null)
            {
                return RedirectToAction("login_giris", "Home");
            }
            var uyem = (uyeler)Session["uyem"];
            var listem = db.ilan_goster.Where(i => i.uyeid == uyem.uyeno).ToList();


            return View(listem);
        }
        public ActionResult yeni_ilan(int? id)
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
        public async Task<ActionResult> yeni_ilan([Bind(Include = "ilan_no,ilan_tarihi,FotoURL,uyeid,plaka_id,ilce_id,tas_marka_id,tas_model_id,fiyat,km,yakit_tipi_id,vites_tip_id,renk_id,motor_gucu_id,motor_hacmi_id,kasa_tip_id,acıklama,varyant_id,takas,tas_tur_id,uretim_yil_id,ilan_basligi")] ilan_goster ilan_goster, HttpPostedFileBase file)
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
                        string yol = Path.Combine(Server.MapPath("~/images") + son_urun_no + dosya_adi);
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


                return RedirectToAction("ilanlarim_list");
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

        public ActionResult ilanlarim_edit(int id)
        {
            if (Session["uyem"] == null)
            {
                return RedirectToAction("login_giris", "Home");
            }
            // İlanı bulun
            var ilan = db.ilan_goster.Find(id);
            if (ilan == null)
            {
                return HttpNotFound();
            }

            // Plaka Listesi
            var plakaListesi = db.sehirler.Select(s => new SelectListItem
            {
                Value = s.plaka.ToString(),  // plaka bir int veya byte olabilir, string'e çevrilmelidir.
                Text = s.sehir_adi,
                Selected = s.plaka == ilan.plaka_id
            }).ToList();
            ViewBag.PlakaList = new SelectList(plakaListesi, "Value", "Text", ilan.plaka_id.ToString());

            // İlçe Listesi
            var ilceListesi = db.ilceler.Select(i => new SelectListItem
            {
                Value = i.ilce_no.ToString(),
                Text = i.ilce_adi,
                Selected = i.ilce_no == ilan.ilce_id
            }).ToList();
            ViewBag.Ilce_List = new SelectList(ilceListesi, "Value", "Text", ilan.ilce_id);

            // Taşıt Marka Listesi
            var tasMarkaListesi = db.tasit_markalari.Select(m => new SelectListItem
            {
                Value = m.tas_marka_no.ToString(),
                Text = m.tas_marka_adi,
                Selected = m.tas_marka_no == ilan.tas_marka_id
            }).ToList();
            ViewBag.TasMarkList = new SelectList(tasMarkaListesi, "Value", "Text", ilan.tas_marka_id);

            // Taşıt Model Listesi
            var tasModelListesi = db.tasit_modelleri.Select(m => new SelectListItem
            {
                Value = m.tas_model_no.ToString(),
                Text = m.tas_model_ad,
                Selected = m.tas_model_no == ilan.tas_model_id
            }).ToList();
            ViewBag.TasModList = new SelectList(tasModelListesi, "Value", "Text", ilan.tas_model_id);

            

            // Yakıt Tipi Listesi
            var yakitListesi = db.yakit_tipleri.Select(y => new SelectListItem
            {
                Value = y.yakit_tipi_no.ToString(),
                Text = y.yakit_tip,
                Selected = y.yakit_tipi_no == ilan.yakit_tipi_id
            }).ToList();
            ViewBag.YakitList = new SelectList(yakitListesi, "Value", "Text", ilan.yakit_tipi_id);

            // Vites Tipi Listesi
            var vitesListesi = db.vites_tipi.Select(v => new SelectListItem
            {
                Value = v.vites_tip_no.ToString(),
                Text = v.vites_tip,
                Selected = v.vites_tip_no == ilan.vites_tip_id
            }).ToList();
            ViewBag.VitesList = new SelectList(vitesListesi, "Value", "Text", ilan.vites_tip_id);

            // Renk Listesi
            var renkListesi = db.renkler.Select(r => new SelectListItem
            {
                Value = r.renk_no.ToString(),
                Text = r.renk,
                Selected = r.renk_no == ilan.renk_id
            }).ToList();
            ViewBag.RenkList = new SelectList(renkListesi, "Value", "Text", ilan.renk_id);

            // Motor Gücü Listesi
            var motorGucuListesi = db.motor_gucleri.Select(mg => new SelectListItem
            {
                Value = mg.motor_gucu_no.ToString(),
                Text = mg.motor_gucu.ToString(),
                Selected = mg.motor_gucu_no == ilan.motor_gucu_id

            }).ToList();
            ViewBag.MotorGucuList = new SelectList(motorGucuListesi, "Value", "Text", ilan.motor_gucu_id);

            // Motor Hacmi Listesi
            var motorHacmiListesi = db.motor_hacimleri.Select(mh => new SelectListItem
            {
                Value = mh.motor_hacmi_no.ToString(),
                Text = mh.motor_hacmi,
                Selected = mh.motor_hacmi_no == ilan.motor_hacmi_id
            }).ToList();
            ViewBag.MotorHacmiList = new SelectList(motorHacmiListesi, "Value", "Text", ilan.motor_hacmi_id);

            // Kasa Tipi Listesi
            var kasaTipListesi = db.kasa_tipleri.Select(kt => new SelectListItem
            {
                Value = kt.kasa_tip_no.ToString(),
                Text = kt.kasa_tipi,
                Selected = kt.kasa_tip_no == ilan.kasa_tip_id
            }).ToList();
            ViewBag.KasaTipList = new SelectList(kasaTipListesi, "Value", "Text", ilan.kasa_tip_id);

            // Varyant Listesi
            var varyantListesi = db.varyantlar.Select(v => new SelectListItem
            {
                Value = v.varyant_no.ToString(),
                Text = v.varyant_ad,
                 Selected = v.varyant_no == ilan.varyant_id
            }).ToList();
            ViewBag.VaryantList = new SelectList(varyantListesi, "Value", "Text", ilan.varyant_id);

            // Taşıt Türü Listesi
            var tasTurListesi = db.tasit_turleri.Select(tt => new SelectListItem
            {
                Value = tt.tas_tur_no.ToString(),
                Text = tt.tas_tur_adi,
                Selected = tt.tas_tur_no == ilan.tas_tur_id
            }).ToList();
            ViewBag.TasTurList = new SelectList(tasTurListesi, "Value", "Text", ilan.tas_tur_id);

            // Üretim Yılı Listesi
            var uretimYilListesi = db.uretim_yili.Select(uy => new SelectListItem
            {
                Value = uy.uretim_yili_no.ToString(),
                Text = uy.yillar.ToString(),
                Selected = uy.uretim_yili_no == ilan.uretim_yil_id
            }).ToList();
            ViewBag.UretimYilList = new SelectList(uretimYilListesi, "Value", "Text", ilan.uretim_yil_id);

            // View'e model ve SelectList'leri gönder
            return View(ilan);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult ilanlarim_edit([Bind(Include = "ilan_no,ilan_tarihi,FotoURL,uyeid,plaka_id,ilce_id,tas_marka_id,tas_model_id,fiyat,km,yakit_tipi_id,vites_tip_id,renk_id,motor_gucu_id,motor_hacmi_id,kasa_tip_id,acıklama,varyant_id,takas,tas_tur_id,uretim_yil_id,ilan_basligi")] ilan_goster model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var ilan = db.ilan_goster.Find(model.ilan_no);
                    if (ilan != null)
                    {
                        // Formdan gelen verilerle ilan nesnesini güncelleyin
                        ilan.ilan_basligi = model.ilan_basligi;
                        ilan.plaka_id = model.plaka_id;
                        ilan.ilce_id = model.ilce_id;
                        ilan.tas_tur_id = model.tas_tur_id;
                        ilan.uretim_yil_id = model.uretim_yil_id;
                        ilan.tas_marka_id = model.tas_marka_id;
                        ilan.tas_model_id = model.tas_model_id;
                        ilan.varyant_id = model.varyant_id;
                        ilan.km = model.km;
                        ilan.vites_tip_id = model.vites_tip_id;
                        ilan.yakit_tipi_id = model.yakit_tipi_id;
                        ilan.fiyat = model.fiyat;
                        ilan.motor_gucu_id = model.motor_gucu_id;
                        ilan.motor_hacmi_id = model.motor_hacmi_id;
                        ilan.kasa_tip_id = model.kasa_tip_id;
                        ilan.renk_id = model.renk_id;
                        ilan.acıklama = model.acıklama;
                        ilan.takas = model.takas;
                        ilan.FotoURL = model.FotoURL;

                        // Veritabanındaki durumu güncelleyin
                        db.Entry(ilan).State = EntityState.Modified;
                        db.SaveChanges();

                        // Güncelleme başarılı olursa, kullanıcıyı başka bir sayfaya yönlendirin
                        return RedirectToAction("ilanlarim_list");
                    }
                }
                else
                {
                    // ModelState geçersizse, hata mesajlarını yazdırın
                    foreach (var key in ModelState.Keys)
                    {
                        var errors = ModelState[key].Errors;
                        foreach (var error in errors)
                        {
                            Debug.WriteLine($"Error in {key}: {error.ErrorMessage}");
                        }
                    }
                }
            }
            catch (Exception hata)
            {
                ModelState.AddModelError("", "Güncelleme sırasında bir hata oluştu: " + hata.Message);
            }
            ViewBag.VitesList = new SelectList(db.vites_tipi, "vites_tip_no", "vites_tip", model.vites_tip_id);
            ViewBag.TasTurList = new SelectList(db.tasit_turleri, "tas_tur_no", "tas_tur_adi", model.tas_tur_id);
            ViewBag.UretimYilList = new SelectList(db.uretim_yili, "uretim_yili_no", "yillar", model.uretim_yil_id);
            ViewBag.PlakaList = new SelectList(db.sehirler, "plaka", "sehir_adi", model.plaka_id);
            ViewBag.Ilce_List = new SelectList(db.ilceler, "ilce_no", "ilce_adi", model.ilce_id);
            ViewBag.TasMarkList = new SelectList(db.tasit_markalari, "tas_marka_no", "tas_marka_adi", model.tas_marka_id);
            ViewBag.TasModList = new SelectList(db.tasit_modelleri, "tas_model_no", "tas_model_ad", model.tas_model_id);
            ViewBag.MotorGucuList = new SelectList(db.motor_gucleri, "motor_gucu_no", "motor_gucu", model.motor_gucu_id);
            ViewBag.MotorHacmiList = new SelectList(db.motor_hacimleri, "motor_hacmi_no", "motor_hacmi", model.motor_hacmi_id);
            ViewBag.RenkList = new SelectList(db.renkler, "renk_no", "renk", model.renk_id);
            ViewBag.KasaTipList = new SelectList(db.kasa_tipleri, "kasa_tip_no", "kasa_tipi", model.kasa_tip_id);
            ViewBag.VaryantList = new SelectList(db.varyantlar, "varyant_no", "varyant_ad", model.varyant_id);
            ViewBag.YakitList = new SelectList(db.yakit_tipleri, "yakit_tipi_no", "yakit_tip", model.yakit_tipi_id);



            return View(model);
        }

        public ActionResult Delete(int id)
        {
            if (Session["uyem"] == null)
            {
                return RedirectToAction("login_giris", "Home");
            }

            var ilan = db.ilan_goster.Find(id);
            if (ilan == null || ilan.uyeid != ((uyeler)Session["uyem"]).uyeno)
            {
                return HttpNotFound();
            }

            return View(ilan);
        }

        // POST: Delete Listing
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            if (Session["uyem"] == null)
            {
                return RedirectToAction("login_giris", "Home");
            }

            var ilan = db.ilan_goster.Find(id);
            if (ilan == null || ilan.uyeid != ((uyeler)Session["uyem"]).uyeno)
            {
                return HttpNotFound();
            }

            db.ilan_goster.Remove(ilan);
            db.SaveChanges();

            return RedirectToAction("ilanlarim_list");
        }
        public ActionResult uyemlik()
        {
            if (Session["uyem"] == null)
            {
                return RedirectToAction("login_giris", "Home");
            }
            var uyem = (uyeler)Session["uyem"];
            var listem = db.uyeler.Where(i => i.uyeno == uyem.uyeno).ToList();


            return View(listem);
        }
        public ActionResult uyem_edit(int? id)
        {
            
            
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                uyeler uyeler = db.uyeler.Find(id);
                if (uyeler == null)
                {
                    return HttpNotFound();
                }

                ViewBag.ilce_id = new SelectList(db.ilceler, "ilce_no", "ilce_adi", uyeler.ilce_id);
                ViewBag.plaka_id = new SelectList(db.sehirler, "plaka", "sehir_adi", uyeler.plaka_id);
                return View(uyeler);
            
            
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> uyem_edit([Bind(Include = "uyeno,kuladi,sifre,uye_TC,adsoyad,Email,Telefon,plaka_id,ilce_id,KayitTarihi")] uyeler uyeler, HttpPostedFileBase file)
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
                    db.Entry(uyeler).State = EntityState.Modified;
                    await db.SaveChangesAsync();
                    
                }
                return RedirectToAction("uyemlik");
            }
                    
            ViewBag.ilce_id = new SelectList(db.ilceler, "ilce_no", "ilce_adi", uyeler.ilce_id);
            ViewBag.plaka_id = new SelectList(db.sehirler, "plaka", "sehir_adi", uyeler.plaka_id);
            return View(uyeler);
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