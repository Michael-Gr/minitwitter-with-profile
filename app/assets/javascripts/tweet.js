$(document).on("turbolinks:load", function() {
  // // for a dropdown list of users. also commented items in application.htm.haml and tweets_controller
  // $('#user').on('change', function(event) {
  //   var user_id = $(this).val()
  //   $.ajax({ url: '/tweets#index',
  //            data: { user: user_id },
  //            dataType: 'script'
  //   })
  // })

  // for search-as-you-type input form
  $('#q').on('change keyup paste', function(event) {
    var search_text = $(this).val()
    console.log(search_text)
    $.ajax({ url: '/tweets#index',
             data: { text: search_text },
             dataType: 'script'
    })
  })
})
