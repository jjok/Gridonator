#
# Gridonator
# @author Jonathan Jefferies (jjok)
#
class @Gridonator
	
	#
	# 
	#
	constructor: (@__container, @__containees, @__max_width) ->
	
	#
	#
	#
	update: =>		
		columns = Math.floor @__container.clientWidth / @__containees[0].clientWidth
		#width = @__container.clientWidth / columns
		columns++ if @__container.clientWidth / columns > @__max_width
		width = Math.floor @__container.clientWidth / columns
		el.style.width = "#{width}px" for el in @__containees
			