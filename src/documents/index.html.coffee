---
layout: 'default'
title: ''
isPaged: true
pagedCollection: 'posts'
pageSize: 5
---

###
div class: "hero-unit text-center", ->
	p ""
###

div class: "articleList", ->
	div class: "row", ->
		div class: "col-md-7", ->
			
			###
			header ->
				h1 ->
					a href: "/pages/all-posts", ->
						span class: "glyphicon glyphicon-align-left"
						" blog posts"
						
			article id: "articleSearch", ->
				@partial('search')

			###


			posts = @getCollection('posts').toJSON().slice(@document.page.startIdx,@document.page.endIdx)

			for document in posts
				article ->
					p class: "text-right text-muted", ->
						em @date(document.date)
						
					h3 -> 
						a href: document.url, -> document.title

					p document.subTitle
					div class: "post-content", ->
						@getCuttedContent(String(document.contentRenderedWithoutLayouts))

					

			## Pagination
			div class: "pagination", ->
				ul ->
					unless @hasPrevPage()
						li class: "page_arrow", ->
							span class: "paginate page_prev", "data-state": "disabled", ->
								i ""
								i ""
					else
						li class: "page_arrow", ->
							a class: "paginate page_prev", href: @getPrevPage(), ->
								i ""
								i ""
					
					visiblePages = 5

					

					half = Math.floor(visiblePages / 2)

					#span -> 
					#	"Cur:" + @document.page.number + ";Tot:"+@document.page.count + "; Half: " +half

					start = @document.page.number - half + 1 - visiblePages % 2
					end = @document.page.number + half + 1

					#span -> 
					#	"A" + start + ";" + end
					if start <= 0
						start = 0
						end = visiblePages
					
					#span -> 
					#	" B" + start + ";" + end

					if end >= @document.page.count
						start = @document.page.count - visiblePages + 1
						end = @document.page.count

					#span -> 
					#	" C" + start + ";" + end
					##boundaries = @getPaginationBoundary(@document.page.number, @document.page.count, 5)

					##div ->
					##	span "aa" + boundaries[0] + ";" + boundaries[1]

					for pageNumber in [start..end-1]
						if @document.page.number is pageNumber
							li ->
								span class: "page active", ->
									text (pageNumber+1)
						else
							li ->
								a class: "page", href: @getPageUrl(pageNumber), ->
									text (pageNumber+1)
					
					unless @hasNextPage()
						li class: "page_arrow", ->
							span class: "paginate page_next", "data-state": "disabled", ->
								i ""
								i ""
					else
						li class: "page_arrow", ->
							a class: "paginate page_next", href: @getNextPage(), ->
								i ""
								i ""


		


		aside class: "col-md-3 col-md-offset-2 text-center", ->
			## Social Info
			article id: "social-info", ->	
			
				ul class: "list-inline", ->
					li ->
						a href: "http://it.linkedin.com/in/giorgiolasala", target: "_blank", ->
							img class: "img-responsive resizeMe", src: "/images/template/linkedin-icon.png"
					li ->
						a href: "http://twitter.com/salem_84/", target: "_blank", ->
							img class: "img-responsive resizeMe", src: "/images/template/twitter-icon.png"
					li ->	
						a href: "http://www.infos.it", target: "_blank", -> 
							img class: "img-responsive resizeMe", src: "/images/template/briefcase-icon.png"
					li ->	
						a href: "https://github.com/salem84", target: "_blank", -> 
							img class: "img-responsive resizeMe", src: "/images/template/github-icon.png"


			### GitHub
			article ->
				div class: "imageAnchor", -> 
					a href: "https://github.com/salem84", target: "_blank", ->
						img class: "tcLogoResize", src: "/images/xcp-github-logo-460x3271-220x156.png"
			###

			## Tagcloud
			div id: "tags-cloud", ->
				div id: "tags-canvas-container", ->
					canvas width:"400", height:"300", id:"tags-canvas", ->
						p ->
							"Anything in here will be replaced on browsers that support the canvas element"
				
				div id: "tags-list", style: "display: none", ->
					ul ->
						for tag, data of @getTagCloud()
							li ->
								a href: data.url, "data-tag-count":data.count, "data-tag-weight":data.weight, ->
									tag

			article class:"blog-links", ->
				div	id:"blog-tecnici", ->
					h3 "Blog tecnici"
					ul ->
						li ->
							a href:"http://dotnet-journey.blogspot.com", target:"_blank", -> ".NET Journey"
						li ->
							a href:"http://buli.waw.pl/", target:"_blank", -> "Buli blog"
						li ->
							a href:"http://blog.micic.ch/", target:"_blank", -> "Darko Micics Dev Blog"
						li ->
							a href:"http://www.irisclasson.com/", target:"_blank", -> "Iris Classon Blog"
						li ->
							a href:"http://www.johnpapa.net/", target:"_blank", -> "John Papa Blog"
						li ->
							a href:"http://milestone.topics.it/", target:"_blank", -> "Mauro Servienti Blog"
						li ->
							a href:"http://weblogs.asp.net/scottgu/", target:"_blank", -> "Scott Gu’s blog"
						li ->
							a href:"http://blogs.technet.com/b/tothesharepoint/", target:"_blank", -> "SharePoint IT Pro Blog"
						li ->
							a href:"http://www.sharepointkings.com/", target:"_blank", -> "Sharepoint Kings"
						li ->
							a href:"http://sharepointsix.blogspot.com/", target:"_blank", -> "SharePoint+CRM Six"
						li ->
							a href:"http://weblogs.asp.net/shijuvarghese/", target:"_blank", -> "Shiju Varghese’s Blog"
						li ->
							a href:"http://blog.mastykarz.nl/", target:"_blank", -> "Waldek Mastykarz"
			
			
				div	id:"blog-generici", ->
					h3 "Altri blog"
					ul ->
						li ->
							a href:"http://www.adrianabiase.it/", target:"_blank", -> "Adriana Biase"
						li ->
							a href:"http://noio-volevam-savoir.blogspot.com/", target:"_blank", -> "Noio volevam savoir"