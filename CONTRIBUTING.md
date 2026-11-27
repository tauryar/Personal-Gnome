# Katkı rehberi

## Değişikliği hazırlama

1. Ele aldığınız sorunu ve değişikliğin nasıl doğrulanacağını bir cümleyle yazın.
2. `develop` dalını güncelleyin ve iş için kısa, açıklayıcı adlı bir dal açın. [Git çalışma akışı](docs/git-akisi.md)
3. İlgili kaynakları, testleri ve kullanıcı belgelerini güncelleyin.
4. Projenin doğrulama komutlarını ve `git diff --cached --check` komutunu çalıştırın. Şablona henüz uygulama eklenmediyse kapsamı dosya ve belge kontrolüyle sınırlayın.
5. Birlikte anlaşılabilen değişiklikleri tek commit'te gruplayın. Mesajda yapılan işi belirtin. Örneğin `Kurulum adımlarına yapılandırma örneği ekle`.

## İnceleme isteği

Pull request, bir daldaki değişiklikleri başka bir dala birleştirmeden önce incelemeye açan istektir. Çalışma dalını `develop` dalını hedefleyecek şekilde incelemeye açın. Açıklamaya şu bilgileri ekleyin.

| Alan | Yazılacak bilgi |
| --- | --- |
| Amaç | Hangi sorun çözülüyor ve kim etkileniyor? |
| Değişiklik | İnceleyenin önce bakması gereken dosyalar hangileri? |
| Doğrulama | Hangi komutlar çalıştırıldı ve sonuçları ne oldu? |
| Kullanım etkisi | Kurulum, ayarlar veya kullanım adımları değişiyor mu? |

Kullanıcıya yansıyan değişiklikleri `CHANGELOG.md` dosyasındaki `Yayımlanmamış` bölümüne ekleyin. Bir sürüm hazırlanırken ilgili maddeler yeni sürüm başlığının altına taşınır.
