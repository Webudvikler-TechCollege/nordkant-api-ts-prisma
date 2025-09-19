# Nordkant API 
Dette API indeholder data til tøj webshoppen Nordkant. API'et er bygget i NodeJS/Typescript og kræver adgang til en Mysql database. 

API'et kan hentes ned og køres lokalt fra din computer.

---
## Kom i gang
Følgende vejledning beskriver kommandoer som skal skrives i en *terminal* som er en helt basal tekst editor som også er indbygget i **VS Code**. Klik på *Terminal* => *New terminal* for at hente den frem.

Alle kommandoer er vist i en teminal lignende boks.

### 1. Klon repository og installér *dependencies* 
Med følgende kommando henter du koden ned på din computer fra Github. Du behøver ikke at lave en folder til den da kommandoen opretter en med navnet *storefront-api-ts-prisma*.
```bash
git clone https://github.com/Webudvikler-TechCollege/storefront-api-ts-prisma.git
```
### 2. Skift til ny mappe og installér *dependencies* 
Du kan bruge kommmandoen `cd` (change directory) til at at placere dig i den nye mappe. Derefter skal du køre en *npm install* for at installere de nødvendige pakker (*dependencies*) 
```bash
cd storefront-api-ts-prisma
npm install
```
### 3. Opret .env fil ud fra det vedlagte eksempel
Kopier eller omdøb filen *.env-example* til *.env* med kommandoen *cp* (copy). Denne fil skal bruges til dine login oplysninger til databasen
```bash
cp .env.example .env
```
### 4. Hent dine database oplysninger
Hent dine database oplysninger fra https://selfservice.itcn.dk/. Slå knappen til On ud for MySQL database og klik på dit navn for at finde oplysningerne. Du skal bruge de oplysninger der står under *Mysql Database*. 

### 5. Indsæt dine database oplysninger
I .env filen er der er en variabel med en connection string (*DATABASE_URL*). Udskift de enkelte elementer i denne med dine egne oplysninger.

- dbuser: Brugernavn
- dbpassword: Password
- dbhost: sql.itcn.dk
- dbport: 3306
- dbname: Database-navn 
```bash
DATABASE_URL="mysql://[dbuser]:[dbpassword]@[dbhost]:[dbport]/[dbname]"
```
*Husk også at fjerne klammerne ([]).*

### 6 Initialiser database
Nu kan du køre følgende kommando for at oprette tabeller og data.
```bash
npm run push
```
Denne kommando pusher dine datamodeller til databasen og seeder tabellerne med data fra csv

### 7. Start serveren
```bash
npm run dev
```