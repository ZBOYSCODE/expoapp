$(document).ready(function() {

    $(document).on('click', '#btn-Registro', function () {

        var action = $("#registro-Form").attr("action");
        var redirect = $("#registro-Form").data("redirect");

        response = ajax($("#registro-Form"), action);


        response.success(function (data) {

            if(data.estado == "correcto"){

                var msg = data.msg + "<br> <b>redirigiendo ...<b>";
                $.bootstrapGrowl(msg, { type: "success", align: 'center',width: 'auto' });

                setTimeout(
                    function()
                    {
                        window.location.href = redirect;
                    }, 2000);

            }
            else {

                if(data.estado == "validacion") {


                    $('[id^="error-"]').each(function() {
                        $(this).html("");
                        $(this).addClass("hidden");
                    });

                    $.each(data.datos, function(i, errores) {

                        $("#error-"+errores[0]).html(errores[1]);
                        $("#error-"+errores[0]).addClass("error");
                        $("#error-"+errores[0]).removeClass("hidden");

                    });

                    $("html, body").animate({ scrollTop: 0 }, "slow");

                }
                else {

                    //inesperado
                    $.bootstrapGrowl(data.msg, { type: "danger", align: 'center',width: 'auto' });

                }

            }
        });
    });


    function ajax(datos, action, async)
    {
        //valor por omisión
        async = async || 'true';
        return $.ajax({
            async	: async,
            type 	: 'POST',
            data 	: datos.serialize(),
            url 	: action,
            dataType: 'json',
            success : function(data)
            {
                return data;
            },
            error: function(data) {
                $.bootstrapGrowl("Error inesperado, repita procedimiento", "danger");
            }
        });
    }
});