#!/bin/sh

# Init
PROJECT="src"

API_URL="https://github.com/m-monstar/mmon-v2-partnershop-api.git"
BACKEND_URL="https://github.com/m-monstar/mmon-v2-backend.git"
SCM_URL="https://github.com/m-monstar/mmon-v2-scm.git"

API_DIR="api"
BACKEND_DIR="backend"
SCM_DIR="scm"

# Directory
if [ ! -d $PROJECT ] ; then
	mkdir $PROJECT
fi

# Git Clone
if [ ! -d $PROJECT/$API_DIR ]; then
	git clone $API_URL $PROJECT/$API_DIR
fi
if [ ! -d $PROJECT/$BACKEND_DIR ]; then
	git clone $BACKEND_URL $PROJECT/$BACKEND_DIR
fi
if [ ! -d $PROJECT/$SCM_DIR ]; then
	git clone $SCM_URL $PROJECT/$SCM_DIR
fi

# Git Submodule Update
cd $PROJECT/$API_DIR && git submodule update --init
cd ..
cd $BACKEND_DIR && git submodule update --init
cd ..
cd $SCM_DIR && git submodule update --init

