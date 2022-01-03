<div id="top"></div>

<!-- PROJECT LOGO -->
<br />
<div align="center">
    <img src="src/assets/images/logo.png" alt="Logo" width="80" height="80">
  <h3 align="center">BeerPongTracker</h3>
</div>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Tartalomjegyzék</summary>
  <ol>
    <li>
      <a href="#A projekt célja">A projekt célja</a>
    </li>
    <li><a href="#Rendszerkövetelmények">Rendszerkövetelmények</a></li>
    <li><a href="#Használt nyelv és keretrendszer">Használt nyelv és keretrendszer</a></li>
    <li><a href="#Főbb elemek">Főbb elemek</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## A projekt célja

A projekt celja egy sörpong  bajnokság nyomonkövetése, ahol lehet számolni a meccsen dobott labdák számát, a különleges dobásokat, illetve ki mennyit dobot be a poharakba, ezeket a rangsorolni a felhasználók bedobott labda pontszáma szerint. Ezeket az adatokat egy adatbazisban tároltuk ahonnan miután a felhasználó regisztrált ahányszor belép esélyt kap felhasználói adatai változtatásra. Mivel a mai világban szinte mindenki rendelkezik okostelefonnal, így akár egy meccs közben is könnyedén követheti a meccs állását, és vezetheti a saját statisztikáját. A felhasználó egyaránt lekérdezheti a jelenlevő bajnokságokat, illetve létre is hozhat bajnokságot.



<div align="left">
    <img src="src/assets/images/screen1.png" alt="Logo">
</div>
<div align="left">
    <img src="src/assets/images/screen2.png" alt="Logo">
</div>
<div align="left">
    <img src="src/assets/images/screen3.png" alt="Logo">
</div>

## Rendszerkövetelmények:
* Android 10 (API level 29) és ennél újabb operációs rendszerek
* Mobilinternet kapcsolat vagy Wifi kapcsolat
* Legalább 150 MB szabad tárhely
* 2 GB RAM
* Android SDK


<p align="right">(<a href="#top">back to top</a>)</p>

### Használt nyelv és keretrendszer

* [Flutter](https://flutter.dev/)
* [Dart](https://dart.dev/)

<p align="right">(<a href="#top">back to top</a>)</p>

#### Főbb elemek

* Kezdőoldal: Ahonnan a felhasználó ha már egyszer regisztrált akkor újra bejelentkezhet, illetve van egy regisztráció gomb ahonnan átkerülnek egy regisztráció oldalra, illetve egy szabályzat gomb ahol eljutnak egy weboldalra ahol elolvashatják a szabályzatait a játék különböző fajtáinak.

* Regisztrációs felület: Ahol a nem regisztrált felhasználók tudnak maguknak profilt készíteni. Az adatok helyes kitöltése után és a ‘Sign Up’ gomb megnyomása után kezdhetik is a bejelentkezést.

* Saját profil: A bejelentkezés után ide kerülnek a felhasználók ahol tudnak változtatni az adatokon illetve lehetőségük van arra is, hogy törölni tudják a saját profiljukat és még egy gomb által átkerülhetnek a Bajnokság Csarnok menübe.

* Bajnokság Csarnok menü: Ahonnan a felhasználók kiválaszthatják a bajnokságot ahova be akarnak lépni illetve tudnak saját kezűleg letrehozni egyet.

* Bajnokság menü: Ahol a bajnokság játékai megtalálhatóak és kiírja, hogy melyik csapat játszik melyik ellen.

* Meccs menü: Itt a játékvezető követi a játék pontszámait és növeli annak a játekosnak pontszámát, illetve a csapat pontszámát, aki bedobott egy labdát a pohárba. Egy játéknak egy 12 perces időkorlát van állítva amit szükség esetén le lehet állítani, szüneteltetni és újraindítani.

<p align="right">(<a href="#top">back to top</a>)</p>