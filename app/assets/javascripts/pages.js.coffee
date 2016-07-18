# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

	$(document).ready ->
		
		jQuery ->

			$(".modal-container").click (event), ->
				$(@).hide()

			$(".modal-content").click (event), ->
				event.stopPropagation()

			$("span.dismiss-modal").click (event), ->
				modal = $('body').find(".modal-container")
				modal.hide()

			$(".login-modal-cta").click (event), ->
				loginModal = $('body').find(".modal-container#login-form")
				loginModal.show()

			$(".join-modal-cta").click (event), ->
				joinModal = $('body').find(".modal-container#join-form")
				joinModal.show()

$(document).ready(ready)
$(document).on('page:load', ready)