#!/bin/bash

# ***** Builds the App Info project *****
#
#   Author:         Bharath Pantala
# 
#
#   The script expects the following environment variables to be set prior
#   to execution:
#
#       JAVA_HOME        Home directory for current version of JDK (also 
#                           used by ANT)
#       WEBLOGIC_HOME    Home directory of weblogic (i.e. d:/bea/weblogic81)                
#       BUILD_ROOT       Root of build tree (default = d:/release/v70/webworkssample)
#       BUILD_PROPS      location of build substitution values
# 
#   Optional Env vars  
#       BUILD_VERSION
#       PATCH_VERSION
# 
#

#export JAVA_HOME=C:\\AdoptOpenJDK\\java
#export JAVA_VENDOR=Sun

#export BUILD_PROPS=C:\\Tomcat-DEV\\exportup\\SCPOBuild_Tomcat.properties

export BUILD_ROOT=
export APP_VERSION=

#export ANT_HOME=
#export SCPO_WPF_DIR=
#export RICH_CLIENT_BUILD_DIR=
#export ABPP_INSTALLER_DIR=