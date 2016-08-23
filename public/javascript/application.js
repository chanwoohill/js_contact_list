$(function () {

  $.ajax({
    url: '/api/contacts',
    method: 'GET',
    }).done(function (res) {
      res.forEach(function (r) {
    // console.log(res[0].name);
        $('.contact-all').append("<p><strong>" + r.name + "</strong>:" + r.email + "</p>");
      });
    }); 











});

// function drawContacts(contacts) {
//     $('#ContactList').empty();
//     if (contacts) {
//       for (var i=0;i<contacts.length;i++) {
//         var row = contactTemplate(contacts[i]); 
//         $('#ContactList').append(row); 
//       }
//     }
//   }

//   function refreshContacts() {
//     $.ajax({
//       url: '/contacts',
//       method: 'GET',
//       success: drawContacts
//     });
//   }














});


  