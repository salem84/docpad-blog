moment = require 'moment'
moment.lang('it')

# The DocPad Configuration File
# It is simply a CoffeeScript Object which is parsed by CSON
docpadConfig = {

	# =================================
	# Template Data
	# These are variables that will be accessible via our templates
	# To access one of these within our templates, refer to the FAQ: https://github.com/bevry/docpad/wiki/FAQ


	templateData:

		# Specify some site properties
		site:
			# The production url of our website
			url: "http://www.giorgiolasala.it"

			# The default title of our website
			title: "Giorgio Lasala Blog"

			# The website description (for SEO)
			description: """
				Giorgio Lasala Blog
				"""

			# The website keywords (for SEO) separated by commas
			keywords: """
				Giorgio
				"""

			# The website author's name
			author: "Giorgio Lasala"

			defaultImageUrl : ""

			# Styles
			styles: [
				"//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"
				#"/static/bootstrap.css"
				"http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,400,300,700",
				"http://fonts.googleapis.com/css?family=Niconne",
				"//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/styles/vs.min.css",
				"/css/jquery.cssemoticons.css",
				"/css/font-awesome.min.css",
				"/css/style.css",

			]
			# Scripts
			scripts: [
				"//cdnjs.cloudflare.com/ajax/libs/modernizr/2.6.2/modernizr.min.js"
				"//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"
				"//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js",
				#"//ajax.googleapis.com/ajax/libs/webfont/1.5.6/webfont.js"
				"/scripts/jquery.cssemoticons.min.js",
				"/scripts/jquery.tagcanvas.js",
				"/scripts/app.js"
			]

		# Discus.com settings
		disqusShortName: 'giorgiolasala'

		# -----------------------------
		# Helper Functions

		# Get the prepared site/document title
		# Often we would like to specify particular formatting to our page's title
		# we can apply that formatting here
		getPreparedTitle: ->
			# if we have a document title, then we should use that and suffix the site's title onto it
			if @document.title
				"#{@document.title} | #{@site.title}"
			# if our document does not have it's own title, then we should just use the site's title
			else
				@site.title

		# Get the prepared site/document description
		getPreparedDescription: ->
			# if we have a document description, then we should use that, otherwise use the site's description
			@document.subTitle or @site.description

		# Get the prepared site/document keywords
		getPreparedKeywords: ->
			# Merge the document keywords with the site keywords
			@site.keywords.concat(@document.keywords or []).join(', ')

		getPageUrlWithHostname: ->
			"#{@site.url}#{@document.url}"

		getJavascriptEncodedTitle: (title) ->
			title.replace("'", "\\'")

		getCuttedContent: (content) ->
			i = content.search('<!-- more -->')
			if i >= 0
				content[0..i-1]
			else
				content
			###

			i = content.search('<!-- more -->')
			if i >= 0
				content = content[0..i-1] + "..."
			else
				if content.length > 500
					pos = content.indexOf(' ', 500)
					content[0..pos-1] + "..."
				else
					content
			###

		hasReadMore: (content) ->
			content.search('<!-- more -->') >= 0

		date: (date,format='LL') ->
			if not date
				date = @document.date

			moment = require 'moment'
			moment.lang('it')
			return moment(date).format(format);



	# =================================
	# Collections
	# These are special collections that our website makes available to us

	collections:
		pages: (database) ->
			database.findAllLive({pageOrder: $exists: true}, [pageOrder:1,title:1])

		posts_and_drafts: (database) ->
			database.findAllLive({layout: 'post' }, [{date: -1}])


	# =================================
	# Environments

	environments:
		production:
			collections:
				posts: (database) ->
					database.findAllLive({layout: 'post', isDraft: $exists: false}, [{date: -1}])

		development:
			collections:
				posts: (database) ->
					database.findAllLive({layout: 'post' }, [{date: -1}])

			plugins:
				livereload:
					enabled: true

	# =================================
	# Plugins

	plugins:
		livereload:
			enabled:false

		cleanurls:
			trailingSlashes: true

		sitemap:
			cachetime: 600000
			changefreq: 'weekly'
			priority: 0.5
			filePath: 'sitemap.xml'

		# Tags
		tags:
			extension: '.html.coffee'
			injectDocumentHelper: (document) ->
				document.setMeta(
					layout: 'tag'
				)

		# Dateurls
		dateurls:
			cleanurl: true
			trailingSlashes: true
			dateFormat: '/YYYY/MM'
		
		ghpages:
        	deployRemote: 'target'
        	deployBranch: 'master'


		

	# =================================
	# DocPad Events

	# Here we can define handlers for events that DocPad fires
	# You can find a full listing of events on the DocPad Wiki
	
}
# Export our DocPad Configuration
module.exports = docpadConfig
