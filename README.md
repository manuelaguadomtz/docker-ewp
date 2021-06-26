# Docker for EWP Reference connector

This docker infrastructue contains 6 containers:
* The reference EWP connecor (in local-ewp)
* A database for the local EWP connector (db)
* A second reference EWP connecor (in testl-ewp)
* A database for the second connector (db1)
* The EWP registry (in local-registry)
* A proxy to connect to the network from a browser (proxy)

Your browser should be configured to trust the (sefl-signed) certificates in:
* local-ewp/ewp-data/keys/local-ewp.pem
* test-ewp/ewp-data/keys/test-ewp.pem
* local-registry/keys/cert.pem

This can be run with the following commands:
```
$ cd ewp
$ ./clean.sh
$ ./setup.sh
$ docker-compose up -d
```
You should configure your browser to use ```localhost:1328``` as HTTP/S proxy. 
Connect to ```https://local.ewp.uma.es/ewp/rest/manifest``` to see the manifest in the first EWP connector.
Connect to ```https://local.ewp.uma.es/ewp``` to see the GUI of the first EWP connector.
Connect to ```https://test.ewp.uma.es/ewp``` to see the GUI of the second EWP connector.
Connect to ```https://local.dev-registry.erasmuswithoutpaper.eu``` to see the main page of the registry service.

The password of the certificates and cryptography repositories is ```changeit```.

The MySQL database of the first connector is accessible at ```localhost:3306```, the one for the second connector is accesible at ```localhost:3307```. The database is called ```ewp```, the user is ```ewpuser``` and the password is ```ewppassword```.
