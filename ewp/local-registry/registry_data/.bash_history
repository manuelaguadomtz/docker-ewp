ls
./entrypoint_register_keys.sh 
ls
cat entrypoint_register_keys.sh 
exit
keytool -list -v -keystore //usr/local/openjdk-8/lib/security/cacerts
keytool -list -v -keystore /usr/local/openjdk-8/lib/security/cacerts | grep ewp
keytool -list -v -keystore /usr/local/openjdk-8/lib/security/cacerts | grep ewp-registry
ls
cat entrypoint_register_keys.sh 
cd keys/
ls
cd certs_to_trust/
ls
openssl x509 -in registry_cert.pem -text
ls
cd ..
ls
cd ..
ls
cat entrypoint_register_keys.sh 
vi entrypoint_register_keys.sh 
cat entrypoint_register_keys.sh 
cat entrypoint_register_keys.sh | head 5
cat entrypoint_register_keys.sh | head -5
cat entrypoint_register_keys.sh | head -6
cat entrypoint_register_keys.sh | head -10
cat entrypoint_register_keys.sh | head -7
cat entrypoint_register_keys.sh | head -8
cat entrypoint_register_keys.sh | head -9
cat entrypoint_register_keys.sh | head -7
cat entrypoint_register_keys.sh | head -7 > entrypoint_register_keys-k.sh 
ls -la
chmod +x entrypoint_register_keys-k.sh 
./entrypoint_register_keys-k.sh 
keytool -list -v -keystore /usr/local/openjdk-8/lib/security/cacerts | grep ewp
keytool -list -v -keystore /usr/local/openjdk-8/lib/security/cacerts | grep registry
/start-wrapper.sh 
exit
