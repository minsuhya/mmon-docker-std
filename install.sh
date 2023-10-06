#!/bin/sh

# Init
WORK_DIR="src"

API_URL="https://github.com/m-monstar/mmon-v2-partnershop-api.git"
BACKEND_URL="https://github.com/m-monstar/mmon-v2-backend.git"
SCM_URL="https://github.com/m-monstar/mmon-v2-scm.git"

API_DIR="api"
BACKEND_DIR="backend"
SCM_DIR="scm"

# Directory
if [ ! -d $WORK_DIR ] ; then
	mkdir $WORK_DIR
fi

# Git Clone
if [ ! -d $WORK_DIR/$API_DIR ]; then
	git clone $API_URL $WORK_DIR/$API_DIR
fi
if [ ! -d $WORK_DIR/$BACKEND_DIR ]; then
	git clone $BACKEND_URL $WORK_DIR/$BACKEND_DIR
fi
if [ ! -d $WORK_DIR/$SCM_DIR ]; then
	git clone $SCM_URL $WORK_DIR/$SCM_DIR
fi

# Git Submodule Update
cd $WORK_DIR/$API_DIR && git submodule update --init
cd ../..
cd $WORK_DIR/$BACKEND_DIR && git submodule update --init
cd ../..
cd $WORK_DIR/$SCM_DIR && git submodule update --init

