@echo off

rem set BUILD_PROPS=C:\\Tomcat-DEV\\setup\\SCPOBuild_Tomcat.properties

rem  BUILD_ROOT is the root directory for the scpo development
rem  environment.  This cannot end with a \.  See the long comment near the end
rem  of this file for a more detailed explanation of the subst BUILD_ROOT and how
rem  to create it.
set BUILD_PROPS=C:\App-Info\setup\app_build.properties

set BUILD_ROOT=C:\App-Info
set APP_VERSION="2020.1.0.1"

set APP_HOME=C:\App-Info\staging\docker

cd %BUILD_ROOT%
rem set SCPO_WPF_DIR=//jda/dfs/npd/Builds/DropBuilds/SCPOWPFClient/v2019.1/TIP/scpo
rem set RICH_CLIENT_BUILD_DIR=//jda/dfs/npd/Builds/DropBuilds/SCPOWPFClient/v2019.1/TIP/framework
rem set ABPP_INSTALLER_DIR=\\jda\dfs\NPD\Builds\DropBuilds\ABPP_tomcat\v2019.1\rel-2019-1-0-0-GA
