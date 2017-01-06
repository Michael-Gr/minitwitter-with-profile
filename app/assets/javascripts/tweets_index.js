$(document).on("turbolinks:load", function() {
  $('.search').hide()
  $('.toggle').click(function(event) {
    $(this).siblings('.search').toggle()
    event.preventDefault()
  })
})
