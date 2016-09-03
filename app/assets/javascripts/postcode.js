$( document ).ready(function() {
  $('.locationsearch').autocomplete({
    minLength: 3,
    source: function(request, response){
      $.ajax({
        type: 'GET',
        url: '/postcode',
        dataType: 'json',
        data: {
          excludePostBoxFlag: true,
          q: request.term 
        },
        success: function(data) {
          debugger;
          if (data.localities.locality instanceof Array) {
            response($.map(data.localities.locality, function (item) {
              return {
                label: item.location + ', ' + item.postcode,
                value: item.location + ', ' + item.postcode 
              }
            }));
          }
          else {
            response($.map(data.localities, function(item) {
              return {
                label: item.location + ', ' + item.postcode,
                value: item.location + ', ' + item.postcode 
              }
            }));
          }
        }
      })
    }
  });
});


