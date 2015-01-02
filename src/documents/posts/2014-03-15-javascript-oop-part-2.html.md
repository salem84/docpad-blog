---
layout: post
title: JavaScript Object Oriented Programming OOP - Part 2
date: 2014-03-15
tags: ["javascript","Programmazione"]
---

#### Come creare una classe

Per creare una classe bisogna definire una function che rappresenta il costruttore della classe
``` js
function Persona() {
}
```
Questo è l'esempio più semplice (e poco utile :D) ... una classe con un costruttore che non accetta argomenti e che non contiene proprietà, variabili o metodi. Per istanziarla basta utilizzare l'operatore **new**

<!-- more -->
``` js 
var persona1 = new Persona(); 
var persona2 = new Persona();
```
Questi due oggetti sono disgiunti e vivono di vita indipendente... complichiamo un po' e aggiungiamo qualcosa nel costruttore
``` js
function Persona() {
   alert('persona istanziata');
}
```
In questo caso nel momento in cui vado a istanziare un oggetto tramite l'operatore new, verrà mostrato un alert.