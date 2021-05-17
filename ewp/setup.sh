#!/bin/bash
cp local-ewp/ewp-data/keys/local-ewp.pem local-registry/keys/certs_to_trust
cp local-ewp/ewp-data/keys/httpsig.pem local-registry/keys/certs_to_trust
cp local-registry/keys/cert.pem local-ewp/ewp-data/keys/certs_to_trust/registry.pem

cd local-registry 
./setup.sh https://local.ewp.uma.ew/ewp/rest/manifest
cd ../local-ewp/ewp-data
./setup.sh
cd ../..
