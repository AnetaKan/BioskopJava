# BioskopJava
Ovaj projekat predstavlja **Java Web aplikaciju**, na temu po izboru. Treba ispuniti sledece:

   - Projekat treba da postuje principe **MVC arhitekture**
   - **Relaciona baza** podataka (**CRUD operacije**)
   - Tehnologija (**Java**, **C#**)
   - Napraviti repozitorijum na **GitHubu**, vrsiti commitove za smislene celine
   - Napisati **dokumentaciju** na Gitu, ukratko objasniti fuknkionalnost aplikacije
   - Aplikacija treba da ima **Usera** i **Admina** sa **razlicitim pravima pristupa**
   - U **Jiri** voditi racuna o vremenu i kreirati smislene taskove
   - **Istestirati rad aplikacije**


Odlucila sam se za pravljenje aplikacije *Bioskop*, u **Java** programskom jeziku, u razvojnom okruzenju **IntelligeJ**.

## Opis aplikacije

Aplikacija se sastoji od LogIn forme, koja osim popunjavanja username-a i lozinke, ima opciju da se bira da li se prijavljujemo kao user ili kao admin.
Od tabela u bazi imamo: *Korisnika*, *Zaposlenog*, *Film*, *Zanr* i *Rezervaciju*. 

Korisnik moze:

- Da se prijavi
- Prikaze sve dostupne filmove
- Prikaze filmove po zanru
- Rezervise kartu

Zaposleni moze da:

 - Prikaze sve korisnike
 - Doda film
 - Obrise film
 - Obrise rezervaciju (korisnik je zakasnio da dodje na blagajnu, pa ne vazi vise rezervacija, brise se)
 - Izmeni rezervaciju
 - Prikaze sve filmove

## Struktura projekta
- **Domain paket** : Ovde se nalaze klase, *Zaposleni*, *Korisnik*, *Zanr*, *Rezervacija*, *Film* . Predstavljaju tabele iz baze podataka. Svaka ima konstruktor, getere i setere, equals i hashCode metode, kao i toString. Putanja je src/main/java/Domain.

- **Bioskop.sql** : Sadrzi bazu podataka u formatu SQL skripte.
-  **database** : U ovom paketu je singletone klasa DBConnection, koja nam sluzi za konfiguraciju konekcije na bazu. Singltone je jer se vise poziva metoda getConnection.

     
