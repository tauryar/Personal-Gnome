@echo off
setlocal
title Personal Gnome - GitHub canli demo
rem Sunumda tek tikla: kucuk bir degisikligi ayri bir dala gonderir, GitHub testleri baslatir,
rem tarayicida Actions sayfasini acar. Sadece examples\canli-demo.md dosyasina satir ekler.
cd /d "%~dp0.."

git rev-parse --is-inside-work-tree >nul 2>&1 || goto :git_yok

set "DAL=feature/canli-demo"
echo [1/4] %DAL% dalina geciliyor...
git switch "%DAL%" >nul 2>&1 || git switch -c "%DAL%" || goto :hata

echo [2/4] examples\canli-demo.md dosyasina zaman satiri ekleniyor...
if not exist "examples" mkdir "examples"
if not exist "examples\canli-demo.md" (
  > "examples\canli-demo.md" echo # Canli demo kayitlari
)
>> "examples\canli-demo.md" echo - Canli demo: %date% %time%
git add -- "examples\canli-demo.md" || goto :hata
git commit -q -m "Canli demo: GitHub testlerini calistir" -- "examples\canli-demo.md" || goto :hata

echo [3/4] GitHub'a gonderiliyor...
git push -u origin "%DAL%" || goto :hata

echo [4/4] Actions sayfasi aciliyor...
powershell -NoProfile -Command "$u = (git remote get-url origin).Trim() -replace '^git@github\.com:', 'https://github.com/' -replace '\.git$', ''; Set-Content -Path '.git\demo_url.tmp' -Value ($u + '/actions') -Encoding ascii"
set "URL="
if exist ".git\demo_url.tmp" (
  set /p URL=<".git\demo_url.tmp"
)
if defined URL start "" "%URL%"
echo.
echo TAMAM. Actions sayfasinda en ustteki "Canli demo" calismasina tikla:
echo   - testler-linux : yaklasik 3 dk, yesil tik = 188 test gecti
echo   - windows-exe   : yaklasik 10-15 dk, sonunda Artifacts altinda PersonalGnome.exe
goto :son

:git_yok
echo HATA: Bu klasor bir git deposu degil. Betigi deponun scripts klasorunden calistir.
goto :son

:hata
echo.
echo HATA: Yukaridaki adimda durdu. Git kimligi veya internet baglantisini kontrol et.

:son
echo.
pause
