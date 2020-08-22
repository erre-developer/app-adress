<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>App-Adress</title>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a href="#" class="navbar-brand">APP ADRESS CHILE </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarToggleExternalContent">
            <ul class="navbar-nav ml-auto">
                <form action="" class="form-inline my-2 my-lg-0">
                    <input type="search" id="search" class="form-control mr-sm-2" placeholder="Search Your Adress">
                    <button class="btn btn-success my-2 my-sm-2" type="">Search</button>
                </form>
            </ul>
          </div>
    </nav>

    <div class="container-fluid p-4">
        <div class="row">
            <div class="col-xl-4 col-lg-4 col-md-4 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="card-body">
                        <form id="adress-form">
                            <input type="hidden" id="adressId">
                            <div class="form-group">
                                <label for="">Dirección</label>
                                <input type="text" id="direction" placeholder="Escribe nombre de calle ..." class="form-control" minlength="3" maxlength="99" required>
                            </div>
                            <div class="form-group">
                                <label for="">Número</label>
                                <input type="number" id="number" placeholder="Escribe número de casa ..." class="form-control" min="1" max="99999999" required>
                            </div>
                            <div class="form-group">
                                <label for="">Departamento (opcional)</label>
                                <input type="text" id="depto" placeholder="Escribe número depto..." class="form-control"  minlength=1 maxlength="10">
                            </div>
                            <div class="form-group">
                                <label for="">Región   </label> <label id="regionRequired" for="" style="color: red"></label>
                                <select class="custom-select" name="regions" id="regions" required>

                                </select>
                                
                            </div>
                            <div class="form-group">
                                <label for="">Comunas</label> <label id="comunaRequired" for="" style="color: red"></label>
                                <select class="custom-select" name="comunas" id="comunas" required>

                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block text-center">Add Adress</button>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12 table-responsive">
                <table class="table table-hover table-striped table-bordered table-sm">
                    <caption>List of adress</caption>
                    <thead style="background-color: #343A40; color:white">
                        <tr>
                            <td>Id</td>
                            <td>Dirección</td>
                            <td>Número</td>
                            <td>Depto</td>
                            <td>Comuna-Región</td>
                            <td>Acciones</td>
                        </tr>
                    </thead>
                    <tbody id="adress"></tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="Assets/js/jquery-3.5.1.min.js"></script>
    <script src="Assets/js/popper.min.js"></script>
    <script src="Assets/js/bootstrap.min.js"></script>

    <script src="Assets/js/app.js"></script>
</body>
</html>