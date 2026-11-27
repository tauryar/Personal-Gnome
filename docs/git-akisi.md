# Git çalışma akışı

Bu şablonda kalıcı dallar `main` ve `develop` olarak ayrılır. Belirli bir iş veya sürüm için bunlardan çalışma dalları açılır. `feature/` ve `release/` dal adlarının ön ekleridir. Bir dal adı bu ön ekle başladığında dalın amacı listeden anlaşılır.

| Dal | Başlangıç noktası | Birleştirme hedefi |
| --- | --- | --- |
| `main` | Şablonun ilk commit'i | Yayımlanacak sürümlerin toplandığı dal |
| `develop` | `main` | Hazır değişiklikler buradan sürüme çıkar |
| `feature/<is-adi>` | `develop` | `develop` |
| `fix/<hata-adi>` | `develop` | `develop` |
| `release/<surum>` | `develop` | `main` ve `develop` |
| `hotfix/<hata-adi>` | `main` | `main` ve `develop` |

`fix/`, geliştirme dalındaki normal hata düzeltmeleri için kullanılır. `hotfix/`, yayımlanan sürümde bekleyemeyecek bir hatayı düzeltmek için kullanılır.

## Özellik geliştirme

Aşağıdaki örnek, uzak repo bağlı ve `develop` dalı yayımlanmışken yeni bir çalışma dalı açar. `--ff-only`, yerel dalı ancak ek bir birleştirme commit'i gerekmiyorsa günceller.

```console
git switch develop
git pull --ff-only origin develop
git switch -c feature/kurulum-ornekleri
```

Değişiklikleri yaptıktan sonra dosyaları sonraki commit için seçin ve seçilen değişiklikleri gözden geçirin. Örnekte, yeni bir kurulum belgesi eklendiği varsayılır.

```console
git add -- docs/kurulum.md
git diff --cached --check
git diff --cached
git commit -m "Kurulum örneklerini ekle"
git push -u origin feature/kurulum-ornekleri
```

Ardından `develop` dalını hedefleyen bir inceleme isteği açın. İnceleme bilgileri için [katkı rehberine](../CONTRIBUTING.md) bakın.

## Sürüm hazırlama

1. Yayımlanacak değişiklikler `develop` dalında birleştiğinde `release/<surum>` dalını buradan açın.
2. Sürüm numarasını, `CHANGELOG.md` dosyasını ve sürüm notlarını güncelleyin. Kullanılacak başlangıç ve doğrulama komutlarını sürüm dalında çalıştırın.
3. Doğrulama tamamlandığında sürüm dalını `main` dalına birleştirin. Yayımlanan commit'i `v0.1.0` gibi bir Git etiketiyle işaretleyin. Etiket, yayımlanan commit'e sonradan erişmek için kullanılan sabit bir addır.
4. Sürüm dalındaki son düzeltmeleri `develop` dalına birleştirin.

## Örnek dalları inceleme

Git paketinden açılan kopyada şu komutlarla geçmişi ve dallardaki dosya farklarını görebilirsiniz. `--stat`, değişen dosyaların ve satır sayılarının özetini gösterir.

```console
git log --all --graph --oneline --decorate
git diff --stat main..develop
git diff --stat develop..feature/dokuman-ornegi
git diff --stat develop..release/0.1.0
```
