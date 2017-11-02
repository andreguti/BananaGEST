
$(document).ready(function(){

    var nombre =  $('#nombre').val();
    var correo2 = $("#correo2").val();
    var   password = $("input#password").val();

    console.log("contenido",nombre);



    

$("button#boton1").on(//  selecciona el boton al hacer click 
    "click",
    function(event)

    {
        var nombre =  $('#nombre').val();
        var correo = $("#correo2").val();
        var   password = $("input#password").val();

        var testEmail =  /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

        console.log("contenido",nombre);
       

        console.log("contenido", correo);

        console.log("contenido", password);

console.log("la salida  es",testEmail.test(correo));
        if(nombre!=""  &&  correo  !="" && password!="" && testEmail.test(correo))
        
        {
        alert('usuario  registrado ');
        
        var nusuario = {
            
             numero:$("nusuario").length+1,
                nnombre :nombre,
                ccorreo :correo,
                ppassword:password
                
             };
            

        }


        else{

            alert('es necesario  llenar alguno  de  los campos  solicitados  o   incluir el  @  en el correo'); 
        }

    });
   $("button#boton1").on(
     "click",

     function(event)
     {
        var correo = $("#email").val();
        var   password = $("#contra").val();

        var testEmail =  /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

        console.log("contenido",correo);
       

        console.log("contenido", password);
         

        if(  correo  !="" && password!="" && testEmail.test(correo))
        
        {
        alert('usuario  logueado  correctamente ');
        
    
            

        }


        else{

            alert('es necesario  llenar alguno  de  los campos  solicitados  o   incluir el  @  en el correo'); 
        }

      

     });




$("button#boton2").on(//  selecciona el boton al hacer click 
    "click",
    function(event)

    {
        var nombre =  $('#nombre').val();
        var correo = $("#correo2").val();
        var   password = $("input#password").val();

        var testEmail =  /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

        console.log("contenido",nombre);
       

        console.log("contenido", correo);

        console.log("contenido", password);

console.log("la salida  es",testEmail.test(correo));
        if(nombre!=""  &&  correo  !="" && password!="" && testEmail.test(correo))
        
        {
        alert('usuario  registrado ');
        
        var nusuario = {
            
             numero:$("nusuario").length+1,
                nnombre :nombre,
                ccorreo :correo,
                ppassword:password
                
             };
            

        }


        else{

            alert('es necesario  llenar alguno  de  los campos  solicitados  o   incluir el  @  en el correo'); 
        }

    });
   $("button#boton1").on(
     "click",

     function(event)
     {
        var correo2 = $("#correo2").val();
        var   password2 = $("#password").val();

        var testEmail =  /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

        console.log("contenido",nombre);
       

        console.log("contenido", correo2);

      

     });



});