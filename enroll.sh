#!/bin/bash

export PATH=$PWD/bin:$PWD
# ORG1
if [ -d "$PWD/workdir/org1.com.tw/tls/admin" ]; then
  rm -rf $PWD/workdir/org1.com.tw/tls/admin
fi
FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/workdir/org1.com.tw/tls/ca-cert.pem
FABRIC_CA_CLIENT_HOME=$PWD/workdir/org1.com.tw/tls/admin
FABRIC_CA_CLIENT_MSPDIR=$PWD/workdir/org1.com.tw/tls/admin
URL=https://tlsadmin:5fe31ca3b113fe68ca6466ae48d50d7d@localhost:2154
fabric-ca-client enroll -d -u $URL --tls.certfiles $FABRIC_CA_CLIENT_TLS_CERTFILES -H $FABRIC_CA_CLIENT_HOME -M $FABRIC_CA_CLIENT_MSPDIR
fabric-ca-client register -d --id.name peer1-org1 --id.secret peer1PW --id.type peer -u https://localhsot:2154
fabric-ca-client register -d --id.name peer2-org1 --id.secret peer2PW --id.type peer -u https://localhsot:2154

if [ -d "$PWD/workdir/org1.com.tw/ca/admin" ]; then
  rm -rf $PWD/workdir/org1.com.tw/ca/admin
fi
FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/workdir/org1.com.tw/ca/ca-cert.pem
FABRIC_CA_CLIENT_HOME=$PWD/workdir/org1.com.tw/ca/admin
FABRIC_CA_CLIENT_MSPDIR=$PWD/workdir/org1.com.tw/ca/admin
URL=https://caadmin:32b0a5d985ff6eec0065993961631832@localhost:2054
fabric-ca-client enroll -d -u $URL --tls.certfiles $FABRIC_CA_CLIENT_TLS_CERTFILES -H $FABRIC_CA_CLIENT_HOME -M $FABRIC_CA_CLIENT_MSPDIR
fabric-ca-client register -d --id.name peer1-org1 --id.secret peer1PW --id.type peer -u https://localhsot:2054
fabric-ca-client register -d --id.name peer2-org1 --id.secret peer2PW --id.type peer -u https://localhsot:2054
fabric-ca-client register -d --id.name admin-org1 --id.secret org1AdminPW --id.type user -u https://localhsot:2054
fabric-ca-client register -d --id.name user-org1 --id.secret org1UserPW --id.type user -u https://localhsot:2054

# ORG2
if [ -d "$PWD/workdir/org2.com.tw/tls/admin" ]; then
  rm -rf $PWD/workdir/org2.com.tw/tls/admin
fi
FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/workdir/org2.com.tw/tls/ca-cert.pem
FABRIC_CA_CLIENT_HOME=$PWD/workdir/org2.com.tw/tls/admin
FABRIC_CA_CLIENT_MSPDIR=$PWD/workdir/org2.com.tw/tls/admin
URL=https://tlsadmin:9a5bb428d5cccb4c1f7078fb72316012@localhost:3154
fabric-ca-client enroll -d -u $URL --tls.certfiles $FABRIC_CA_CLIENT_TLS_CERTFILES -H $FABRIC_CA_CLIENT_HOME -M $FABRIC_CA_CLIENT_MSPDIR
fabric-ca-client register -d --id.name peer1-org2 --id.secret peer1PW --id.type peer -u https://localhsot:3154
fabric-ca-client register -d --id.name peer2-org2 --id.secret peer2PW --id.type peer -u https://localhsot:3154


if [ -d "$PWD/workdir/org2.com.tw/ca/admin" ]; then
  rm -rf $PWD/workdir/org2.com.tw/ca/admin
fi
FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/workdir/org2.com.tw/ca/ca-cert.pem
FABRIC_CA_CLIENT_HOME=$PWD/workdir/org2.com.tw/ca/admin
FABRIC_CA_CLIENT_MSPDIR=$PWD/workdir/org2.com.tw/ca/admin
URL=https://caadmin:198b39f4f823b8c0d036b40c5ea171c4@localhost:3054
fabric-ca-client enroll -d -u $URL --tls.certfiles $FABRIC_CA_CLIENT_TLS_CERTFILES -H $FABRIC_CA_CLIENT_HOME -M $FABRIC_CA_CLIENT_MSPDIR
fabric-ca-client register -d --id.name peer1-org2 --id.secret peer1PW --id.type peer -u https://localhsot:3054
fabric-ca-client register -d --id.name peer2-org2 --id.secret peer2PW --id.type peer -u https://localhsot:3054
fabric-ca-client register -d --id.name admin-org2 --id.secret org2AdminPW --id.type user -u https://localhsot:3054
fabric-ca-client register -d --id.name user-org2 --id.secret org2UserPW --id.type user -u https://localhsot:3054


