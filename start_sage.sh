#!/bin/bash

#nova flavor-list
#nova image-list
#nova help boot

NAME=sagemath
#IMAGEID=8552412c-1851-4898-8a7f-be9ac112e405
IMAGEID=f30bdd8a-6cbb-453e-a502-404efb8ab849
FLAVID=14
nova boot --image $IMAGEID --flavor $FLAVID --key-name yyimls ${NAME}

