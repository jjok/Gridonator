Gridonator
==========

`coffee -c -o ./lib ./src`
`uglifyjs -m -c -o ./lib/gridonator.min.js ./lib/Gridonator.js`

	class @Gridonator

Set the container, containee elements and the maximum width of the containees.

		constructor: (@__container, @__containees, @__max_width) ->

Resize containee elements to share all the available space inside container.

		update: =>		
			columns = Math.floor @__container.clientWidth / @__containees[0].clientWidth
			columns++ if @__container.clientWidth / columns > @__max_width
			width = Math.floor @__container.clientWidth / columns
			el.style.width = "#{width}px" for el in @__containees

(c) Jonathan Jefferies (jjok)
