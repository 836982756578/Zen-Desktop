# Modern AutoHide Desktop Icons & Minimalist Masaüstü Widget'ı

> **⭐ Geliştirici:** **Serkan ŞENTÜRK**  
> **Sürüm:** 2.5 (Modern Zen Edition)  
> **Mimari & UI/UX Tasarımı:** **Serkan ŞENTÜRK**  
> **Telif Hakkı:** © 2026 Serkan ŞENTÜRK. Tüm Hakları Saklıdır.

Klasik **AutoHideDesktopIcons** uygulamasının Windows 10 ve Windows 11 için baştan sona yeniden tasarlanmış, ultra modern ve minimalist yeni versiyonu. Tüm mimarisi ve tasarımı **Serkan ŞENTÜRK** tarafından geliştirilmiştir.

Bu proje iki güçlü bileşeni bir araya getirir:
1. **`ModernAutoHideIcons.exe` (Masaüstü Uygulaması)**: Yerel Windows WPF uygulaması. Modern Fluent arayüz mimarisine sahip gelişmiş ayarlar denetim masası, akıllı masaüstü ikon gizleme motoru, sistem tepsisi (tray) entegrasyonu, futbol maç takipçisi, finans & kripto barı, donanım monitörü ve medya denetimi.
2. **`widget.html` (Web Widget'ı)**: Herhangi bir tarayıcıda tek tıkla açılabilen, tam ekran (F11) veya hareketli masaüstü arka planı (Lively Wallpaper / Wallpaper Engine) olarak kullanılabilen saf web widget'ı. Modern modal denetim paneline sahiptir.

---

## 🌟 Widget Özellikleri (Tasarım & Fonksiyonlar)

Kullanıcı arayüzü gereksiz tüm süslerden, ağır gölgelerden ve dikkat dağıtıcı çizgilerden arındırılmış; **saf iskandinav / Apple minimalizmi** anlayışıyla tasarlanmıştır:

- 🕒 **Büyük ve Okunaklı Dijital Saat**:
  - Saat ve dakika (örn: `16:45`): İnce ve zarif (Light / 200 ağırlık) büyük modern tipografi.
  - Saniye (örn: `:28`): Küçük, sağ alt köşeye hizalı ve soluk (dimmed / %40 opaklık). Ayarlardan açılıp kapatılabilir.
- 📅 **Tarih ve Türkçe Gün İsmi**:
  - `gün.ay.yıl` formatında okunaklı tarih (örn: `16.10.2026`).
  - Türkçe gün ismi (`Pazartesi`, `Salı`, `Çarşamba`, `Perşembe`, `Cuma`, `Cumartesi`, `Pazar`).
- ⚽ **Canlı Futbol Maç Takipçisi (4 Büyükler & Milli Takım)**:
  - **Takip Edilen Takımlar**: Galatasaray, Fenerbahçe, Beşiktaş, Trabzonspor ve Türkiye A Milli Futbol Takımı.
  - **Maçtan 5 Dk Önce Seken Takım Futbol Topu Bildirimi**: Seçili takımın maç saatinden tam 5 dakika önce widget içerisinde yukarı-aşağı fizikle zıplayan, dinamik zemin gölgesine sahip kulüp renklerindeki vektör futbol topu (Galatasaray: Sarı-Kırmızı, Fenerbahçe: Sarı-Lacivert, Beşiktaş: Siyah-Beyaz, Trabzonspor: Bordo-Mavi, Türkiye: Kırmızı-Beyaz) ve geri sayım paneli belirir.
  - **6 Dakika Görünüm Süresi**: Seken top ve maç bildirimi 6 dakika boyunca ekranda aktif kalarak maçın 1. dakikasında (`kickoff + 1 dk`) otomatik olarak kaybolur.
  - **Maç Başlangıç Düdüğü**: Maç saati tam geldiğinde (`00:00`), dahili procedurally-sentezlenen gerçekçi hakem başlama düdüğü (*tweet! tweeeeeet!*) otomatik çalar.
  - **Anlık Test Butonu**: Ayarlar penceresindeki "🔊 Seken Topu ve Düdüğü Test Et" butonuna basarak seken top animasyonunu ve düdük sesini anında test edebilirsiniz.
  - **Maç Günü Canlı Rozet**: Takımlardan birinin bugün maçı olduğunda canlı kırmızı rozet ve maç saati belirir (Örn: `⚽ BUGÜN 20:00 · Trabzonspor - Çaykur Rizespor (Trendyol Süper Lig)`).
  - **En Yakındaki Maçı Gösterme Seçeneği**: Bugün maç yoksa otomatik olarak en yakın maçın tarihi ve geri sayımı gösterilir (Örn: `⚽ Sonraki Maç: 17 Eki Cts 19:00 · Antalyaspor - Galatasaray (Yarın)`).
  - **Fikstürde Gezinme**: Rozete tıklandığında fikstürdeki diğer yaklaşan maçlar arasında sırayla geçiş yapılır.
  - **Ayarlanabilirlik**: Ayarlar penceresinden hem maç takipçisi hem de "en yakın maçı göster" opsiyonu bağımsız olarak açılıp kapatılabilir. Fikstür `matches.json` dosyasından veya harici API adresinden dinamik beslenir.
- 📈 **Canlı Finans ve Kripto Paneli**:
  - **Döviz**: USD/TRY (Dolar) ve EUR/TRY (Euro) anlık satış fiyatları ve günlük değişim yüzdeleri.
  - **Altın**: Gram Altın (₺) ve Ons Altın ($) anlık değerleri ve günlük değişim oranları.
  - **BIST 100 Endeksi**: BIST 100 endeks puanı, günlük yüzdelik değişimi ve piyasa durumu (Hafta içi 10:00–18:00 arası `● Açık`, diğer saatlerde `○ Kapalı`).
  - **Kripto Para (Bitcoin & Ethereum)**: Binance 24hr API üzerinden canlı BTC/USDT ve ETH/USDT fiyatları ve günlük değişimleri. Ayarlardan açılıp kapatılabilir.
  - **Değişim Yönü İndikatörleri**: Değer artışında yeşil ▲, düşüşte kırmızı ▼ ok ve yüzde oranı.
  - **Son Güncelleme Zamanı**: `Son güncelleme: SS:DD` zaman damgası (bağlantı hatasında son başarılı veriyi korur ve `(Veri alınamadı)` uyarısıyla otomatik yeniden dener). Tıklayarak anlık manuel yenileme yapılabilir.
  - **Yerel Önbellek (`finance_cache.json`)**: Çevrimdışıyken veya açılışta son bilinen değerleri anında ekrana yansıtır.
- ⚡ **Canlı Donanım Monitörü (CPU & RAM)**:
  - Tarih satırının altında canlı işlemci kullanım oranı (`CPU: %X`) ve bellek kullanım bilgisi (`RAM: %Y (Z GB)`).
  - Tıklandığında doğrudan Windows Görev Yöneticisi'ni açar.
  - Ayarlardan kolayca açılıp kapatılabilir.
- 🗕 **Kompakt Mod (Minimal Clock Pill)**:
  - Ayarlar panelinden veya sistem tepsisinden Kompakt Mod seçildiğinde hava durumu, finans ve diğer paneller gizlenir; widget son derece sade, ekranı kaplamayan mini saat & tarih kapsülüne dönüşür.
- 🎚️ **Saydamlık / Opaklık Kaydırıcısı (%0 - %100)**:
  - Ayarlar penceresinden kart yüzeyinin şeffaflığı canlı olarak ayarlanabilir. En sola (**%0**) getirildiğinde kart yüzeyi ve çerçevesi tamamen görünmez hale gelir; saat, tarih ve hava durumu masaüstü üzerinde çerçevesiz, saf ve pürüzsüz şekilde süzülür.
- 🎮 **Oyun / Tam Ekran Modu**:
  - Tam ekranda oyun veya ağır bir uygulama açıldığında otomatik olarak tespit edilir; CPU ve internet sorguları askıya alınarak sıfır FPS kaybı ve maksimum sistem tasarrufu sağlanır.
- 🎯 **Konumlandırma, Sabitleme & Kilitleme Özelliği**:
  - **Varsayılan Konum (Üst Orta)**: Widget varsayılan olarak ekranın üst orta hizasında (`top_center`, Y = 36px) estetik ve dengeli bir şekilde konumlanır.
  - **🔒 Konumu Kilitle (Sabit Tutma)**: Widget'ın yanlışlıkla fare ile sürüklenmesini veya kaydırılmasını önlemek için **Konumu Kilitle** özelliği eklenmiştir. Varsayılan olarak etkindir; fareyle sürüklendiğinde yerinden oynamaz. İstenildiğinde Ayarlar Paneli ("🪟 Masaüstü Widget'ı") veya Sistem Tepsisi (sağ tık) menüsünden tek tıkla açılıp kapatılabilir.
  - **Serbest Sürükleme (Kilit Açıkken)**: Kilit devre dışı bırakıldığında sol tıkla basılı tutarak widget'ı ekranın dilediğiniz yerine serbestçe taşıyabilirsiniz.
  - **Hızlı Konum Değiştirme**: Ayarlar panelinden veya sistem tepsisinden tek tıkla **Üst Orta (Varsayılan)** veya **Ekran Ortası** konumlarına hizalayabilirsiniz (Kilit kapalıyken kart üzerine çift tıklayarak da geçiş yapılabilir).
  - **Sağ Tık Menüsü & Hızlı Ayarlar**: Widget üzerine **sağ tıklayarak**, şehir ismine tıklayarak veya sistem tepsisindeki ikon üzerinden Ayarlar Paneline anında erişebilirsiniz.
- ⛅ **Canlı Hava Durumu & Sabit Tipografi**:
  - Derece, minimalist hava ikonu, Türkçe durum açıklaması ve şehir ismi.
  - **Sıfır Titreme & Kayma**: Tabular (sabit sütun genişlikli) rakamlar ve sabit sol sütun mimarisi sayesinde saat veya CPU/RAM değiştikçe hava durumu asla yana veya ileriye oynamaz; yerinde kaya gibi sabit kalır.
  - Şehir adı üzerine tıklanarak veya ayarlardan şehir kolayca değiştirilebilir.
- 🎨 **Tasarım & Tema Detayları**:
  - **Kart Yapısı**: Bol iç boşluklu ve yumuşak köşeli (**30px border-radius**).
  - **Sade İkili Tema (Koyu / Açık)**: Tek tıkla saf Koyu (Dark) ve Açık (Light) tema arasında geçiş.
  - **Görünmez Kart Modu**: Saydamlık %0'a getirildiğinde arka plan ve çerçeve tümüyle sıfırlanır, gölge ve sınırlar kaybolur.
  - **Akıllı Saydamlık**: Opaklık kaydırıcısı sadece kartın arka planını etkiler; saat, tarih ve metinler %100 kristal netliğinde ve sabit kalır.
  - **Yüzdelik Boyut Ölçeklendirmesi**: Widget boyutu ayarlardan %50 ile %200 arasında istenilen boyutta ayarlanabilir.

---

## 🚀 Masaüstü İkon Gizleme Motoru

- ⏱️ **Akıllı Hareketsizlik Zamanlayıcısı**: Fare veya klavyede işlem yapılmadığında (ayarlanabilir: 2 sn - 60 sn) masaüstü simgelerini otomatik gizler.
- 🖼️ **Simgeler Gizlendiğinde Özel Duvar Kağıdı Gösterme (Windows "Doldur" & Çoklu Monitör)**:
  - **Sadece Özel Duvar Kağıdı Seçilmişse Devreye Girer**: Özel bir duvar kağıdı seçilmemişse, sistem varsayılan Windows masaüstü duvar kağıdında **hiçbir değişiklik yapmaz** ve hiçbir katman penceresi açmaz; Windows'un kendi çoklu monitör yerleşimi %100 korunur.
  - **Windows "Doldur" (Fill) Modu & 2 Monitör Uyumu**: Özel bir görsel seçildiğinde, sistemdeki her monitör (`Screen.AllScreens`) için bağımsız ekran penceresi oluşturularak görsel Windows "Doldur" (`UniformToFill`) modunda o monitörün çözünürlüğüne en-boy oranı bozulmadan tam doldurulur. İki monitörün arasına yayılma veya ortalama kaynaklı görüntü bozulması tamamen ortadan kaldırılmıştır.
  - **Manuel Dosya Seçme**: Ayarlar panelinden bilgisayarınızdaki herhangi bir görseli (`.png`, `.jpg`, `.jpeg`, `.bmp`, `.webp`) seçebilirsiniz.
  - **Sıfır Kalite Kaybı / Orijinal Kalite**: Görseller asla sıkıştırılmaz veya piksel kaybına uğramaz; donanımsal DirectX yüzeyi üzerinde (`HighQuality` bikübik filtreleme ve `PreservePixelFormat`) orijinal çözünürlükte gösterilir.
  - **Varsayılana Dönüş / Sıfırlama**: "🔄 Sıfırla (Varsayılana Dön)" butonuna basılarak özel görsel seçimi temizlenebilir ve anında Windows'un yerel duvar kağıdına geri dönülebilir.
  - **Anlık Önizleme**: Ayarlar arayüzündeki "👁️ Önizleme Yap" butonuna basarak görünümü anında test edebilirsiniz.
- 🖱️ **Fare Hareketi ile Geri Getirme**: Fare oynatıldığında simgeler anında geri gelir.
- 👆 **Masaüstüne Tıklama ile Geri Getirme**: Simge gizliyken masaüstüne sol tıklandığında simgeleri açar.
- ⚡ **Masaüstüne Çift Tıklama Kısayolu**: Boş masaüstüne çift tıklayarak simgeleri anında gizleyip gösterebilirsiniz.
- ⌨️ **Global Kısayol Tuşu**: İstediğiniz her an **`Win + Ctrl + D`** tuşlarına basarak simgeleri tek dokunuşla açıp kapatabilirsiniz.
- 🪟 **Katman Seviyesi Seçimi (Varsayılan: Masaüstü Arka Planına Sabitle)**:
  - *Masaüstü Arka Planına Sabitle (Varsayılan)*: Widget açık pencerelerin arkasında, masaüstü üzerinde sabit durur ve çalışma alanınızı asla kapatmaz (`HWND_BOTTOM`).
  - *Her Zaman Üstte*: Widget sürekli pencerelerin üzerinde kalır.
  - *Normal Pencere*: Standart pencere davranışı.

---

## ⚙️ Modern Desktop Zen Ayarlar Paneli

Ayarlar arayüzü, modern **Windows 11 Fluent Design** tasarım dili örnek alınarak baştan sona yeniden kodlanmıştır:

- 🔍 **Merkezi Arama Çubuğu**: Üst barda yer alan arama kutusuna dilediğiniz ayar veya anahtar kelimeyi (örn: `altın`, `maç`, `ikon`, `zaman`, `şentürk`, `opaklık`) yazdığınızda ayarlar anlık olarak filtrelenir.
- 📑 **Kategorize Sol Gezinme Menüsü**:
  - 🏠 **Giriş**: Masaüstü ikon canlı durumu (Görünür / Gizli göstergesi), anlık aç/kapa butonu ve modül kartları.
  - ⚙️ **Genel**: Windows ile otomatik başlatma anahtarı, sistem kısayol rozeti ve renk teması seçimi (Koyu ve Açık Tema).
  - 👁️ **İkon Gizleme**: Ana ToggleSwitch kapsülü, bekleme süresi kaydırıcısı, fare hareketi, masaüstü tık ve çift tık tetikleyicileri.
  - 🪟 **Masaüstü Widget'ı**: Konum butonları (🎯 Ortala / ⬆️ Üst Orta), katman seviyesi (Arka Plan / En Üst), %0-%100 saydamlık (%0'da görünmez kart ve çerçeve), %50-%200 boyut ölçeği ve şehir seçimi.
  - 📈 **Finans & Pariteler**: USD, EUR, Gram Altın, Ons Altın, BIST 100, BTC, ETH anahtarları ve kısa kodla özel kripto/döviz ekleme kutusu.
  - ⚽ **Maç Takipçisi**: Dinamik maç günü takım saati (GS, FB, BJK, TS, Türkiye Ay-Yıldız ayraç), en yakın maç geri sayımı ve isteğe bağlı takım seçimleri.
  - ⚡ **Akıllı Özellikler**: Canlı CPU & RAM monitörü ve otomatik oyun optimizasyon modu.
  - ℹ️ **Hakkında & Geliştirici**: Uygulama geliştiricisi **Serkan ŞENTÜRK** özel geliştirici künyesi, mimari detaylar ve lisans bilgileri.
- ⚡ **Sabit Geliştirici Rozeti**: Sol menünün en altında sürekli görünür olan **Serkan ŞENTÜRK** geliştirici rozetine tıklayarak doğrudan künyeye ulaşabilirsiniz.
- 🔘 **Windows 11 Toggle Switch**: Kartların sağında "Açık" / "Kapalı" durumunu gösteren pürüzsüz kapsül anahtarlar.

Tüm bu ayarlar **`config.json`** dosyasına otomatik kaydedilir.

---

## 📁 Dosya Yapısı

| Dosya Adı | Açıklama |
| :--- | :--- |
| **`ModernAutoHideIcons.exe`** | Derlenmiş yerel Windows masaüstü uygulaması (Doğrudan çalıştırılabilir). |
| **`ModernAutoHideIcons.cs`** | Uygulamanın tüm C# WPF kaynak kodu (Win32 API, UI, maç motoru, finans & kripto, donanım monitörü). |
| **`matches.json`** | GS, FB, BJK, TS ve Türkiye maç fikstürü veritabanı. |
| **`widget.html`** | Bağımsız modern web widget'ı (Tarayıcıda çalışır, canlı maç takibi ve kripto desteklidir). |
| **`config.json`** | Kullanıcı ayarları (tema, süre, şehir, konum, saydamlık, finans, maç takipçisi, donanım monitörü vb.). |
| **`finance_cache.json`** | Çevrimdışı ve anlık açılış için son başarılı finans ve kripto verilerinin yerel önbellek dosyası. |
| **`build.bat`** | Windows .NET derleyicisi ile uygulamayı tek tıkla yeniden derleyen komut dosyası. |
| **`build.ps1`** | PowerShell üzerinden derleme betiği. |

---

## 💻 Yeniden Derleme ve Çalıştırma

Kodda herhangi bir değişiklik yaptığınızda yeniden derlemek için:
```powershell
powershell -ExecutionPolicy Bypass -File .\build.ps1
```
veya doğrudan `build.bat` dosyasına çift tıklayabilirsiniz. Çıktı aynı klasördeki **`ModernAutoHideIcons.exe`** dosyasıdır.
