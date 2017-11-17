$(document)
		.ready(
				function() {//Entra hasta que la pagina se cargó
					
					$("button#boton2")
					//Selector
					.on(
							"click", //Evento a manejar
							function(event) {
					
			saveName = $(
					"input#nombre")
					.val(); //Estamos apuntando al textarea. Devuelve un string
			saveName = $.trim(saveName); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.

			saveCorreo = $(
					"input#correo2")
					.val(); //Estamos apuntando al textarea. Devuelve un string
			saveCorreo = $.trim(saveCorreo); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.

			saveContrasena = $(
					"input#password").val(); //Estamos apuntando al textarea. Devuelve un string
			saveContrasena = $.trim(saveContrasena); //Función trim sirve para recortar espacios al inicio y al fin de la cadena.



					var nuevaPublicacion = {
							"nombre" : saveName,
							"correo" : saveCorreo,
							"contrasena" : saveContrasena,
										//saveAddall

						};

						//alert(nuevaPublicacion);
						alert(nuevaPublicacion);

						

				if (saveName !== "" && saveCorreo !== ""
						&& saveContrasena !== "") {
					console.log(saveName);
					console.log(saveCorreo);
					console.log(saveContrasena);



					//Insertar nueva publicacion.

					$
					.ajax({
						url : "http://localhost:8080/Proyecto/AgregarUsuario",
						type : "POST",
						//Qué espero recibir de la ruta
						contentType : "application/json",
						//Que tipo de datos te voy a enviar
						dataType : "json",
						data : JSON
								.stringify(nuevaPublicacion),

						//Servlet existe y me devolvió un JSON
						success : function(
								data,
								textStatus,
								jqXHR) {
							console
									.log("Si el acceso al servlet fue correcto");
							console.log(data); //data.dato

						},
						error : function(jqXHR,
								textStatus,
								errorThrown) {
							//console.log(data);
							console.log(jqXHR);
							console
									.log(textStatus);
							console
									.log(errorThrown);
						}
					});

					

				} else {
						
					
					alert("Debes completar todos los campos para poder continuar.");
					

				}

							}); //Funcion para manejar un evento

				});
