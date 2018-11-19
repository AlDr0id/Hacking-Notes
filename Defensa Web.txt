Sanitizar el input
	=> Escapado de caracteres


allow_url_include = Off => En el servidor

Usar la funcion "file_exists(string $filename) bool" para evitar la inclusión de ficheros remotos

Añadir la extension .php al final de la variable:
    $var=$var.'.php';
    include $archivo;

Eliminar la ruta relativa del archivo: basename(string $path, string[optional] $suffix = null) string

Concatenar el valor de la variable, al directorio de trabajo actual, obviamente, habiendo pasado la variable por la función "basename":
    $pagina=$_GET['page'];
    $pagina=getcwd().'\\'.basename($pagina);



if(isset($_GET['seccion'])) {
    $sec=$_GET['seccion'];
    if(strcmp("contacto",$sec)==0) {
        include_once 'contacto.php';
    } else if(strcmp("home",$sec)==0) {
        include_once 'home.php';
        }
    else {
        include_once 'home.php';
    }
}
