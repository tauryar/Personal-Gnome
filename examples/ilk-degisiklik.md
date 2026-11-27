# İlk dokümantasyon değişikliği örneği

Bu dal, `develop` üzerinden açılan tek dosyalık bir dokümantasyon değişikliğini gösterir. Örneğin kabul ölçütü, inceleyen kişinin neyin değiştiğini ve hangi dalı hedeflemesi gerektiğini komutlarla doğrulayabilmesidir.

```console
git switch feature/dokuman-ornegi
git diff --name-status develop...HEAD
git diff --check develop...HEAD
```

İlk karşılaştırmanın çıktısında `A` işaretiyle `examples/ilk-degisiklik.md` görünür. İkinci komut, değişen satırlarda boşluk hatası bulmadığında çıktı üretmez.

## İnceleme açıklaması örneği

| Alan | Açıklama |
| --- | --- |
| Amaç | Yeni katkı veren kişinin ilk dal değişikliğini inceleyebilmesi |
| Değişiklik | Örnek dosyaya karşılaştırma komutlarının ve beklenen çıktının eklenmesi |
| Doğrulama | Dal karşılaştırmasında tek dosyanın eklendiğini ve boşluk kontrolünün geçtiğini doğrula |
| Hedef | `develop` |

İnceleme adımlarının tamamı [katkı rehberinde](../CONTRIBUTING.md) yer alır.
