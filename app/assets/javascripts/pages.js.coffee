# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

	$(document).ready ->
		
		jQuery ->

			$(".modal-container").click (event), ->
				contentContainer = $('body').find(".content-container")
				contentContainer.removeClass('blurred')
				$(@).hide()

			$(".modal-content").click (event), ->
				event.stopPropagation()

			$("span.dismiss-modal").click (event), ->
				modal = $('body').find(".modal-container")
				contentContainer = $('body').find(".content-container")
				contentContainer.removeClass('blurred')
				modal.hide()

			$(".login-modal-cta").click (event), ->
				loginModal = $('body').find(".modal-container#login-form")
				contentContainer = $('body').find(".content-container")
				contentContainer.addClass('blurred')
				loginModal.show()

			$(".join-modal-cta").click (event), ->
				joinModal = $('body').find(".modal-container#join-form")
				contentContainer = $('body').find(".content-container")
				contentContainer.addClass('blurred')
				joinModal.show()

			$(".account-settings-modal").click (event), ->
				settingsModal = $('body').find(".modal-container#settings")
				contentContainer = $('body').find(".content-container")
				contentContainer.addClass('blurred')
				settingsModal.show()

			$(".option-item").click (event), ->
				$('body').find('.option-item.active').removeClass("active")
				$(@).addClass("active")

$(document).ready(ready)
$(document).on('page:load', ready)