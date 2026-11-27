# Git repo şablonu

Bu şablon, yeni bir projenin dosya düzenini ve Git dallarını kurmak için kullanılabilir. Proje açıklamasını bu dosyada, teknik kararları `docs/` altında, uygulama kodunu `src/` altında tutun.

## Dosya düzeni

```text
git-repo-sablonu/
├── README.md
├── CONTRIBUTING.md
├── CHANGELOG.md
├── .editorconfig
├── .gitattributes
├── .gitignore
├── config/
│   └── README.md
├── docs/
│   ├── proje-tanimi.md
│   ├── mimari.md
│   └── git-akisi.md
├── examples/
│   └── README.md
├── scripts/
│   └── README.md
├── src/
│   └── README.md
└── tests/
    └── README.md
```

| Klasör | İçerik |
| --- | --- |
| `config/` | Paylaşılabilir yapılandırma örnekleri ve ayar açıklamaları |
| `docs/` | Gereksinimler, mimari ve Git çalışma akışı |
| `examples/` | Kullanım örnekleri ve örnek girdiler |
| `scripts/` | Kurulum, doğrulama ve bakım komut dosyaları |
| `src/` | Uygulama kaynak kodu |
| `tests/` | Testler ve test girdileri |

## Git paketiyle başlama

Git dalı, commit denen kayıtlı değişiklikleri izleyen adlandırılmış bir iş hattıdır. `.bundle` dosyası bu şablonun dört dalını ve commit geçmişini taşıyan, Git ile açılabilen bir pakettir. Aşağıdaki komutları paketle aynı klasörde çalıştırın.

```console
git clone ./git-repo-sablonu.bundle projem
cd projem
git branch --track develop origin/develop
git branch --track feature/dokuman-ornegi origin/feature/dokuman-ornegi
git branch --track release/0.1.0 origin/release/0.1.0
git branch --list
```

| Dal | Rolü | Paketteki örnek değişiklik |
| --- | --- | --- |
| `main` | Kararlı başlangıç | Temel klasörler, ayarlar ve belgeler |
| `develop` | Değişiklikleri bir araya getirme | `docs/yol-haritasi.md` |
| `feature/dokuman-ornegi` | Tek bir iş üzerinde çalışma | `examples/ilk-degisiklik.md` |
| `release/0.1.0` | Sürümü hazırlama | Sürüm notu ve `CHANGELOG.md` güncellemesi |

`origin`, Git'in uzak repo için kullandığı addır. Git paketinden açılan kopyada bu ad önce paket dosyasını gösterir. Kendi boş uzak reponuza yüklemek için aşağıdaki komutlarda `UZAK_REPO_URL` yerine Git sunucunuzun verdiği adresi yazın.

```console
git remote set-url origin UZAK_REPO_URL
git push -u origin main develop feature/dokuman-ornegi release/0.1.0
```

## ZIP ile başlama

ZIP arşivi, `main` dalının dosyalarını `git-repo-sablonu/` klasöründe açar. İçerikten kendi commit geçmişinizi başlatmak için komutları bu klasörün içinde çalıştırın. Git ilk commit için ad ve e-posta ister. Kimlik ayarlı değilse örnek değerleri kendi bilgilerinizle değiştirin.

```console
git init -b main
git config user.name "Ad Soyad"
git config user.email "EMAIL_ADRESINIZ"
git add .
git commit -m "Proje iskeletini oluştur"
git branch develop
```

İlk dalınızı açmadan önce [Git çalışma akışını](docs/git-akisi.md) ve [katkı rehberini](CONTRIBUTING.md) inceleyin. Projeye özel hedefleri ve kararları doldurmak için [proje tanımı](docs/proje-tanimi.md) ve [mimari kaydını](docs/mimari.md) kullanın.
