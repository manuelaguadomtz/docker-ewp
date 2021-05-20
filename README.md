# Docker for EWP Reference connector

This docker infrastructue contains 4 containers:
* The reference EWP connecor (in local-ewp)
* A database for the local EWP connector (db)
* The EWP registry (in local-registry)
* A proxy to connect to the network from a browser (proxy)

Your browser should be configured to trust the (sefl-signed) certificates in:
* local-ewp/ewp-data/keys/local-ewp.pem
* local-registry/keys/cert.pem

This can be run with the following commands:
```
$ ./clean.sh
$ ./setup.sh
$ docker-compose up -d
```
You should configure your browser to use ```localhost:1328``` as HTTP/S proxy. 
Connect to ```https://local.ewp.uma.es/ewp/rest/manifest``` to see the manifest int he EWP connector (the GUI is not enabled). 
Connect to ```https://local.dev-registry.erasmuswithoutpaper.eu``` to see the main page of the registry service.

The password of the certificates and cryptography repositories is ```changeit```.

The MySQL database is accessible at ```localhost:3306```. The database is called ```ewp```, the user is ```ewpuser``` and the password is ```ewppassword```.
