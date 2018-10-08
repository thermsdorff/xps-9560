#!/bin/bash

## Set SUDO prefix
SUDO=''
if (( $EUID != 0 )); then
    SUDO='sudo'
fi

## Define constants
INSTALL_DIR=/home/$USER/.screenManagement
COMMAND_DIR=/usr/local/bin
DUAL=dual
EXTERNAL=external
MAIN=main

## Create scripts directory
mkdir -p ${INSTALL_DIR}

## Copy scripts to installation directory
cp ${MAIN}.sh ${INSTALL_DIR}/${MAIN}.sh
cp ${DUAL}.sh ${INSTALL_DIR}/${DUAL}.sh
cp ${EXTERNAL}.sh ${INSTALL_DIR}/${EXTERNAL}.sh

## Set files executable
chmod +x ${INSTALL_DIR}/*.sh

## Install command to system
${SUDO} ln -s ${INSTALL_DIR}/${MAIN}.sh ${COMMAND_DIR}/${MAIN}
${SUDO} ln -s ${INSTALL_DIR}/${DUAL}.sh ${COMMAND_DIR}/${DUAL}
${SUDO} ln -s ${INSTALL_DIR}/${EXTERNAL}.sh ${COMMAND_DIR}/${EXTERNAL}

## Display new commands
echo "New commands have been added : ${MAIN}, ${EXTERNAL} and ${DUAL}"
