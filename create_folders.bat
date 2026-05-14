@echo off

set countries=Afghanistan Albania Algeria Andorra Angola Antigua_e_Barbuda Arabia_Saudita Argentina Armenia Australia Austria Azerbaigian Bahamas Bahrein Bangladesh Barbados Belgio Belize Benin Bhutan Bielorussia Bolivia Bosnia_ed_Erzegovina Botswana Brasile Brunei Bulgaria Burkina_Faso Burundi Cambogia Camerun Canada Capo_Verde Ciad Cile Cina Cipro Colombia Corea_del_Sud Corea_del_Nord Costa_Rica Croazia Cuba Danimarca Ecuador Egitto El_Salvador Emirati_Arabi_Uniti Estonia Etiopia Filippine Finlandia Francia Gabon Gambia Georgia Germania Giappone Giamaica Giordania Grecia India Indonesia Iran Iraq Irlanda Islanda Israele Italia Kazakistan Kenya Kuwait Laos Lettonia Libano Libia Liechtenstein Lituania Lussemburgo Madagascar Malesia Mali Malta Marocco Messico Moldavia Monaco Mongolia Namibia Nepal Nicaragua Nigeria Norvegia Nuova_Zelanda Olanda Pakistan Panama Paraguay Peru Polonia Portogallo Qatar Regno_Unito Repubblica_Ceca Romania Russia San_Marino Singapore Slovacchia Slovenia Spagna Stati_Uniti Svezia Svizzera Thailandia Tunisia Turchia Ucraina Ungheria Uruguay Venezuela Vietnam Yemen Zambia Zimbabwe

for %%c in (%countries%) do (
    mkdir "%%c"

    echo ^<!DOCTYPE html^> > "%%c\index.html"
    echo ^<html lang="it"^> >> "%%c\index.html"
    echo ^<head^> >> "%%c\index.html"
    echo     ^<meta charset="UTF-8"^> >> "%%c\index.html"
    echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^> >> "%%c\index.html"
    echo     ^<title^>%%c^</title^> >> "%%c\index.html"
    echo     ^<link rel="stylesheet" href="../style.css"^> >> "%%c\index.html"
    echo ^</head^> >> "%%c\index.html"
    echo ^<body^> >> "%%c\index.html"
    echo     ^<div class="breadcrumb"^> >> "%%c\index.html"
    echo         ^<a href="../index.html"^>Home^</a^> ^> %%c >> "%%c\index.html"
    echo     ^</div^> >> "%%c\index.html"
    echo     ^<h1^>%%c^</h1^> >> "%%c\index.html"
    echo     ^<p^>Birrifici presenti nella collezione.^</p^> >> "%%c\index.html"
    echo     ^<div class="card-grid"^>^</div^> >> "%%c\index.html"
    echo ^</body^> >> "%%c\index.html"
    echo ^</html^> >> "%%c\index.html"
)

echo.
echo Cartelle create con successo!
pause