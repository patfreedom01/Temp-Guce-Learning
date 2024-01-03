
    $(document).ready(function(){
        // $('#datetimepicker').datetimepicker();
        getModuleName()
    })


    function getModuleName() {
       $('#typeModule').on('change', function () {
           console.log("this value", $(this).val())
          /* $.ajax({
               type: "POST",
               url: $('#js_type_module').val(),
               data: {module: $(this).val()},
               success: function (data) {

               }
           })*/
       })
    }
