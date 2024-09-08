using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace alperkaand_proje.Models
{
    public class ilandetay
    {
        private List<sepetlik> sepetliks = new List<sepetlik>();
        public List<sepetlik> ilandetaylist { get => sepetliks; }

        public void arac_getir(ilan_goster gelen_ilan)
        {
            var gelen_arac = sepetliks.FirstOrDefault(x => x.ilan.ilan_no == gelen_ilan.ilan_no);
            if (gelen_arac == null)
            {
                sepetliks.Add(new sepetlik { ilan = gelen_ilan });
            }

        }
        public void sepeti_temizle()
        {
            sepetliks.Clear();
        }
    }
}