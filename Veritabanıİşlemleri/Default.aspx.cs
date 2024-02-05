using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Veritabanıİşlemleri
{
    public partial class Default1 : System.Web.UI.Page
    {
        Urunler_VTEntities baglanti = new Urunler_VTEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            Urunler urunEkle = new Urunler();

            urunEkle.UrunKodu = int.Parse(BoxUrunKodu.Text);
            urunEkle.UrunAdi = BoxUrunAdi.Text;
            urunEkle.StokMiktari = int.Parse(BoxStokMiktari.Text);
            urunEkle.BirimFiyat = int.Parse(BoxBirimFiyat.Text);
            urunEkle.UrunAciklama = BoxUrunAciklama.Text;
            try
            {
                baglanti.Urunlers.Add(urunEkle);
                baglanti.SaveChanges();
                LabelSonuc.Text = "Kayıt gerçekleşti";

            }
            catch (Exception)
            {
                LabelSonuc.Text = "Kayıt gerçekleşmedi";
            }


        }

        protected void BtnList_Click(object sender, EventArgs e)
        {
            baglanti.Urunlers.Load();
            GridView1.DataSource = baglanti.Urunlers.Local;
            GridView1.DataBind();
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            int UrunKodu = int.Parse(BoxUrunKodu.Text);
            var sorgu = from kayit in baglanti.Urunlers
                        where kayit.UrunKodu == UrunKodu
                        select kayit;

            var liste = sorgu.ToList(); 

            if (liste.Count > 0)
            {
                foreach (var kayit in liste)
                {
                    baglanti.Urunlers.Remove(kayit); 
                }
                baglanti.SaveChanges();
                LabelSonuc.Text = "Silme işlemi gerçekleşti.";
            }
            else
            {
                LabelSonuc.Text = "Silme işlemi gerçekleşmedi.";
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            int UrunKodu = Convert.ToInt32(BoxUrunKodu.Text);
            var sorgu = (from kayit in baglanti.Urunlers
                         where kayit.UrunKodu == UrunKodu
                         select kayit).ToList();

            if (sorgu.Count == 1)
            {
                sorgu[0].UrunAdi = BoxUrunAdi.Text;
                sorgu[0].BirimFiyat = int.Parse(BoxBirimFiyat.Text);
                sorgu[0].StokMiktari =int.Parse(BoxStokMiktari.Text);
                sorgu[0].UrunAciklama = BoxUrunAciklama.Text;
                baglanti.SaveChanges();
                LabelSonuc.Text = "Güncelleme işlemi gerçekleşti.";

            }
            else {
                LabelSonuc.Text = "Güncelleme işlemi gerçekleşmedi.";
            }
                   
        }
    }
}