header id: "siteHeader", class: "img-responsive", style: "background-image: url(" + ( @document.heroImageUrl or '/images/template/dynamo.jpg' )+ ");", ->
  
	div ->
		@partial('nav')

	div class: "jumbotron", ->
		div class: "container", ->
			h1 @site.title
			#h2 @document.subTitle or ''
			span class: "headerArrow"