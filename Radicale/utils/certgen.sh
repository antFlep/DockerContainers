#!/bin/bash

# replace with your values
CA="SomeCA"                             # ca name
DN="SomeDomain"                         # domain name
CC="SC"                                 # country code
ST="SomeState"                          # state
CI="SomePlace"                          # city or locality
OR="SomeOrganization"                   # organization
OU="SomeUnit"                           # organizational unit

# generate self signed ssl key and cert
openssl req \
    -new \
    -newkey rsa:4096 \
    -days 365 \
    -nodes \
    -x509 \
    -subj "/C=${CC}/ST=${ST}/L=${CI}/O=${OR}/CN=${DN}" \
    -keyout resources/my-server.key \
    -out    resources/my-server.crt
