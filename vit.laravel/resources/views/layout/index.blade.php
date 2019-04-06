<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>@yield('title')</title>
</head>
<body>
    <div class="wrapper">
        <header>
            </div>
            <div class="navigation">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                      <li class="nav-item active" id="active">
                        <a class="nav-link" href="/">Список поездок <span class="sr-only">(current)</span></a>
                      </li>
                      <li class="nav-item active" id="active">
                        <a class="nav-link" href="{{ route('personal') }}">Сотрудники <span class="sr-only">(current)</span></a>
                      </li>
                      <li class="nav-item active" id="active">
                        <a class="nav-link" href="{{ route('country') }}">Регионы <span class="sr-only">(current)</span></a>
                      </li>
                        <div class="btn-group">
                          <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Добавить
                          </button>
                          <div class="dropdown-menu" id="add-link">
                          <a class="dropdown-item" href="{{ route('addTrip') }}">Добавить поездку</a>
                          <a class="dropdown-item" href="{{ route('addPersonal') }}">Добавить курьера</a>
                          <a class="dropdown-item" href="{{ route('addCountry') }}">Добавить регион</a>
                        </div>
                    </ul>
                  </div>
                </nav>
            </div>
        </header>
        <content>
           @yield('body')
        </content>
        <footer>

        </footer>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
    </html>
</body>
</html>
