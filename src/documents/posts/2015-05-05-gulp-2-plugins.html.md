---
layout: post
title: Gulp Tutorial 2 - Plugins
date: 2015-05-05
tags: ["Gulp"]
serie: gulp-tutorial
---

Nel primo post abbiamo creato la solution VS con uno script Gulp che non fa nulla! Almeno però non va in errore :D
Oggi vedremo come inserire i primi plugins che ci serviranno per i prossimi step.

Aggiungiamo al file *package.json* le nuove dipendenze 

```
	"devDependencies": {
        "gulp": "^3.8.11",

        "gulp-util": "~3.0.2",
        "gulp-filter": "~2.0.2",
        "gulp-uglify": "~1.1.0",
        "gulp-concat": "~2.5.2",
        "gulp-rename": "~1.2.2"
    }
```

La stessa operazione la possiamo eseguire sia da riga di comando con l'opzione **--save-dev** sia da VS 2015, direttamente dal Solution Explorer.

Analizziamo in dettaglio i vari package:
* **gulp-util:** contiene diverse funzioni utili quali log e noop (per utilizzare gli stream di Gulp senza effettuare alcuna operazione)
* **gulp-filter:** per eseguire filtri sui file su cui operare
* **gulp-uglify:** per le operazioni di minification su Javascript e CSS
* **gulp-concat:** per aggregare i diversi file in un unico output
* **gulp-rename:** per eseguire operazioni di rename

Adesso possiamo facilmente utilizzare tutti i plugin all'interno del *gulpfile.js*

```
var gutil = require('gulp-util');
var guglify = require('gulp-uglify');
```

Per evitare di inserire tutte le *require* con le rispettive variabili, ci viene in soccorso **gulp-load-plugins** che consente di raggruppare tutte le dipendenze sotto un'unica variabile. Di default, vengono 'prelevate' tutti i package che seguono il pattern ** 'gulp-\*' ** e ** 'gulp.\*' **. 

Quindi all'interno del *gulpfile.js* avremo semplicemente:

```
var plugins = require("gulp-load-plugins")();
```

e all'interno dei task potremo ad esempio utilizzare la funzione **log** di *gulp-util* in questo modo:

```
plugins.util.log('Sto eseguendo un task...tutto OK');
```

[Visualizza codice](https://github.com/salem84/AngularTsMvcWebApp/tree/b069abc1ba6f8d1226d46fa85580e67bd38fc469)