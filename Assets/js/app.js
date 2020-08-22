$(document).ready(function(){

    let edit = false;
    fetchAdress();
    fetchRegions();

    $('#search').keyup(function(e){
        if ($('#search').val()) {
            let search = $('#search').val();
            $.ajax({
                url : 'Controllers/adress-search.php',
                type : 'POST',
                data : {search},
                success : function (response){
                    let adress = JSON.parse(response);
                    let template = '';

                    adress.forEach(varAdress => {
                        template += `
                        <tr adressId=${varAdress.id_direccion}>
                            <td>${varAdress.id_direccion}</td>
                            <td>${varAdress.nombre_calle}</td>
                            <td>${varAdress.numero}</td>
                            <td>${varAdress.depto}</td>
                            <td>${varAdress.nombre_comuna} - ${varAdress.nombre_region}</td>
                            <td>
                                <button title="Editar" class="btn btn-info" ><i class="fa fa-pencil"></i></button>    
                                <button title="Eliminar" class="btn btn-danger adress-delete"><i class="fa fa-trash"></i></button>
                            </td>
 
                        </tr>`;
                    });

                    $('#adress').html(template);

                }
            })

        }else{
            fetchAdress();
        } // fin IF
    })

    $('#adress-form').submit(function(e){

        let bandera = true;

        /*No estaría de más comprobar que ciertamente es un número con isNaN(numero)
         que devuelve false en caso de que sea un número y true en el caso en el que no se un numero.*/ 

        if (isNaN($('#number').val())) {
            console.log('NO ES NUMERO');
            bandera = false;
            e.preventDefault();
        }else{
            console.log('ES NUMERO');
            
        }

        if ($('#regions').val() === '0' || $('#comunas').val() === '0') {

            console.log($('#regions').val());
            console.log('IF');
            bandera = false;
            console.log(bandera);
            $('#regionRequired').html('(Requerido)');
            $('#comunaRequired').html('(Requerido)');
            e.preventDefault();
        }

        if(bandera){

            let url = "";
            if(edit === false){
                url = 'Controllers/add-adress.php';
                edit = false;
            }else{
                url = 'Controllers/edit-adress.php';
                console.log("ID A MODIFICAR ES :"+ $('#adressId').val());
                edit = false;
            }

            console.log("BANDERA ES: "+bandera);
            console.log(url);
            const postData = {
                direction : $('#direction').val(),
                number : $('#number').val(),
                depto : $('#depto').val(),
                comunas : $('#comunas').val(),
                id : $('#adressId').val()
            };
            
            console.log(postData);
            $.post(url, postData, function(response){
                fetchAdress();
            });
            $('#regionRequired').html('');
            $('#comunaRequired').html('');
            $('#adress-form').trigger('reset');
            e.preventDefault();
        }
    })

    function fetchAdress(){
        $.ajax({
            url : 'Controllers/adress-list.php',
            type : 'GET',
            success : function (response){
                let adress = JSON.parse(response);
                let template = '';
                let template2 = "<option value='0'>SELECTED</option>";
                adress.forEach(varAdress => {
                    template += `
                    <tr adressId=${varAdress.id_direccion}>
                        <td>${varAdress.id_direccion}</td>
                        <td>${varAdress.nombre_calle}</td>
                        <td>${varAdress.numero}</td>
                        <td>${varAdress.depto}</td>
                        <td>${varAdress.nombre_comuna} - ${varAdress.nombre_region}</td>
                        <td>
                            <button title="Editar" class="btn btn-info adrees-edit"><i class="fa fa-pencil"></i></button>    
                            <button title="Eliminar" class="btn btn-danger adress-delete "><i class="fa fa-trash"></i></button>
                        </td>
 
                    </tr>`
                });
                $('#adress').html(template);
                $('#comunas').html(template2);
                $('#comunas').attr('disabled', 'disabled');
            }
        });
   }

   function fetchRegions(){      
       $.ajax({
        url : 'Controllers/regions-list.php',
        type : 'GET',
        success : function (response){
            let regions = JSON.parse(response);
            let template = "<option value='0'>SELECTED</option>";
            regions.forEach(varRegions => {
                template += `
                <option value='${varRegions.id_region}'>
                    ${varRegions.nombre_region}
                </option>
                `
            });
            $('#regions').html(template);
        }
    });
   }

   $("#regions").change(function(){
       let id = $(this).val();
       $.ajax({
            url : 'Controllers/comuna-list.php',
            type : 'POST',
            data : {id},
            success : function (response){
                let comunas = JSON.parse(response);
                console.log(comunas);
                let template = "<option value='0'>SELECTED</option>";

                comunas.forEach(varComunas => {
                template += `
                <option value='${varComunas.id_comuna}'>
                    ${varComunas.nombre_comuna}
                </option>
                `
                });
                $('#comunas').removeAttr('disabled');
                $('#regionRequired').html('');
                $('#comunaRequired').html('');
                $('#comunas').html(template);
            }
        })
        
    })

   $(document).on('click','.adress-delete',function(){
        if (confirm('Quieres eliminar la dirección ?')) {
            let element = $(this)[0].parentElement.parentElement;
            let id = $(element).attr('adressId');
            $.post('Controllers/adress-delete.php', {id}, function(response){
                fetchAdress();
            })
        }
   })

   $(document).on('click','.adrees-edit', function(){
         let element = $(this)[0].parentElement.parentElement;
         let id = $(element).attr('adressId');
         console.log(id);
         $.post('Controllers/adress-single.php', {id}, function(response){
             const adress = JSON.parse(response);
             $('#direction').val(adress.nombre_calle);
             $('#number').val(adress.numero);
             $('#depto').val(adress.depto);
             $('#regions').val(adress.id_region);
             $('#adressId').val(adress.id_direccion);
             getComuna(adress.id_region,adress.id_comuna);
             edit = true;
        })

        
   })

   //FUNCION QUE TRAE LA COMUNA SOLICITADA
   //RECIBE 2 PARAMETROS -- ID "QUE ES ID DE REGION " Y  IDCOMUNA "QUE ES EL ID DE LA COMUNA DE LA REGION QUE SE CARGARA"

    function getComuna(id,idComuna){
    $.ajax({
         url : 'Controllers/comuna-list.php',
         type : 'POST',
         data : {id},
         success : function (response){
             let comunas = JSON.parse(response);
             console.log(comunas);
             let template = "<option value='0'>SELECTED</option>";

             comunas.forEach(varComunas => {
             template += `
             <option value='${varComunas.id_comuna}'>
                 ${varComunas.nombre_comuna}
             </option>
             `
             });
             $('#comunas').removeAttr('disabled');
             $('#comunas').html(template);
             $('#comunas').val(idComuna);
         }
     })
     
    }

});

