issue: fatal: unable to access 'https://github.com/bla/bla.git/': OpenSSL SSL_connect: Connection reset by peer in connection to github.com:443 
sol: git config --global http.sslBackend "openssl"
