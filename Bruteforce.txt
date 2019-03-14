**Hydra**
	hydra -l/-L user/userList -P dicc.lst -s PUERTO -f (cuando encuentra un resultado para) -t THREADS -vV URL http-get/post-form "/Path/:username=^USER^&password=^PASS^:Mensaje error"

acccheck -t [IP target] -u [username]/ -U [usernames file] -p [password]/ -P [passwords file] (Prueba credenciales para inicio de sesión remota)

**MySQL**
use auxiliary/scanner/mysql/mysql_login (Fuerza bruta login MYSQL)
	definir RHOSTS, PASS_FILE (diccionario), USER_FILE (usuarios)
