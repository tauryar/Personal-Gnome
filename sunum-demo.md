# Sunumda GitHub'da çalıştığını gösterme

Amaç: jüriye, kodun GitHub'a gönderildiği anda bulut makinelerinde otomatik test edildiğini ve
Windows exe'sinin derlendiğini göstermek. GitHub Actions bunu her gönderimde kendiliğinden yapar.

## Sunumdan önce (bir kez)

1. Depoyu bilgisayarına klonla, `scripts\canli-demo.bat` dosyasına bir kez çift tıkla. GitHub kullanıcı adı ve
   şifre/giriş penceresi çıkarsa giriş yap. Sunumda tekrar sormaz.
2. Açılan **Actions** sayfasında çalışmanın **yeşil** bittiğini gör (yaklaşık 15 dk). Kırmızıysa sunumdan önce düzelt.
3. Yeşil çalışmanın sayfasında **Artifacts → PersonalGnome** ile exe'yi indir; sunumda yedek olarak hazır dursun.
4. İsteğe bağlı rozet: `README.md` en üstüne aşağıdaki satırı ekle (`KULLANICI/REPO` yerine kendi adresin).
   Depo ana sayfasında yeşil "passing" rozeti görünür.

   ```markdown
   ![CI](https://github.com/KULLANICI/REPO/actions/workflows/ci.yml/badge.svg)
   ```

## Sunum sırasında (yaklaşık 1 dakika anlatım)

1. `scripts\canli-demo.bat` dosyasına çift tıkla. Küçük bir değişiklik ayrı bir dala (`feature/canli-demo`)
   gönderilir ve Actions sayfası açılır.
2. En üstteki **Canli demo** çalışmasını göster: "Kod gönderildi, GitHub şu an Linux'ta 188 testi çalıştırıyor,
   ardından Windows'ta exe'yi derleyip içini kontrol edecek."
3. Beklerken sunuma devam et. Yaklaşık 3 dk sonra **testler-linux** işinin yeşil olduğunu göster.
4. Windows işi uzun sürdüğü için exe'yi, önceden yeşil biten çalışmanın **Artifacts** bölümünden göster.

## Bir şey ters giderse

- İnternet yoksa: önceden yeşil biten çalışmanın sayfasını tarayıcıda açık tut, onu göster.
- Betik yalnızca `examples/canli-demo.md` dosyasına bir satır ekler ve yalnızca bu dosyayı commit'ler; `main` ve
  `develop` dallarına dokunmaz.
