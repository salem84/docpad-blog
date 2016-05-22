Personal Blog
==============

[![Build Status](https://travis-ci.org/salem84/docpad-blog.svg?branch=master)](https://travis-ci.org/salem84/docpad-blog)


## Realizzato con [DocPad](http://docpad.org)

Post fino al _2014-03-15_ provengono da importazione Wordpress

Da Marzo 2015, il blog è ospitato su [Heroku](https://www.heroku.com) (*Free Dyno*) all'indirizzo [giorgiolasala.herokuapp.com](http://giorgiolasala.herokuapp.com)

Da Maggio 2015, il blog è rilasciato su Github Pages tramite Travis CI

## Installazione

1. Installare l'ultima versione di [DocPad](https://docpad.org/docs/install)

1. Clonare il repository, installare i packages e avviare Docpad

	``` bash
	git clone git@github.com:salem84/docpad-blog.git
	cd docpad-blog
	npm install
	docpad run
	```

1. Aprire il browser [http://localhost:9778/](http://localhost:9778/)

## Travis Deployment

Il sorgente del blog è compilato da Travis CI lanciando lo script (presente nel file *.travis.yml*)
	
``` bash
	docpad deploy-ghpages --env static
```
	
e attraverso [https://github.com/docpad/docpad-plugin-ghpages](GitHub Pages Deployer Plugin for DocPad) è copiato nel repository master di [http://salem84.github.io](salem84.github.io)

## Licenza
Copyright &copy; 2014 All rights reserved.
