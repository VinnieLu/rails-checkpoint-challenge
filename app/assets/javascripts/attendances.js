$(document).ready(function() {
	$("#attend-button").on("click", ".button_to", function(event) {
		event.preventDefault()
		button = $(this)
		$.ajax({
			url: button.attr("action"),
			type: button.attr("method"),
			data: button.serialize()
		})
		.done(function(response) {
			alert("it worked!")
			user = response.first_name + " " + response.last_name
			$("#concert-info").append("<strong>" + user + "</strong>")
			button.hide()
		})
	})
})