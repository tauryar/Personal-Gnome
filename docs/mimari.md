# Mimari kaydı

Mimari kaydı, uygulamanın parçalarını, aralarındaki ilişkileri ve kararların gerekçelerini tarif eder. İlk çalışan özellik eklenirken aşağıdaki tabloyu doldurun.

| Başlık | Kaydedilecek bilgi |
| --- | --- |
| Giriş noktaları | Kullanıcının programı nasıl başlattığı ve ilk çalıştırılan dosya |
| Bileşenler | Her bileşenin sorumluluğu ve kullandığı diğer bileşenler |
| Veri akışı | Girdinin nereden geldiği, nerede doğrulandığı ve çıktının nereye yazıldığı |
| Ayarlar | Paylaşılan varsayılanların ve çalışma sırasında verilen değerlerin kaynağı |
| Hata davranışı | Hatanın kullanıcıya nasıl bildirildiği ve işlemin nasıl yeniden deneneceği |
| Doğrulama | Bileşenlerin tek başına ve birlikte hangi testlerle denetlendiği |

## Karar kaydı örneği

| Alan | Örnek |
| --- | --- |
| Bağlam | Girdi biçimi ilk sürümden itibaren belgelenmeli. |
| Karar | Kullanılabilir bir örnek girdiyi `examples/` altında sakla. |
| Gerekçe | Yeni kullanıcı dosya biçimini örnek üzerinden doğrulayabilir. |
| Sonuç | Girdi biçimi değiştiğinde örnek dosya ve test girdileri birlikte güncellenir. |
