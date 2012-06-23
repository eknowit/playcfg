@REM
@REM authors:  @jlmanrique
@REM           @eknowitsac

:begin
@echo off

echo
echo  _____   _                   __       
echo  ^|  __ \^| ^|                 / _^|     
echo  ^| ^|__) ^| ^| __ _ _   _  ___^| ^|_ __ _ 
echo  ^|  ___/^| ^|/ _` ^| ^| ^| ^|/ __^|  _/ _` ^|
echo  ^| ^|    ^| ^| (_^| ^| ^|_^| ^| (__^| ^|^| (_^| ^|
echo  ^|_^|    ^|_^|\__,_^|\__, ^|\___^|_^| \__, ^|
echo                   __/ ^|         __/ ^|
echo                  ^|___/         ^|___/ 
echo

set pathToPlay=%~dp0
set defaultVersion=1.2.4
set firstPath=%firstPath%
if "%firstPath%"=="" goto setFirstPath
goto settings

:setFirstPath
set firstPath=%PATH%

:settings
if not "%1 %2"==" " goto commands
set versionToTest=%defaultVersion%
if not exist "%pathToPlay%\%defaultVersion%" echo dirError
if not exist "%pathToPlay%\%defaultVersion%\play.bat" echo playNotFound 
set version=%defaultVersion%
goto setPath

:commands
if not "%1"=="version" goto usageError 
if "%2"=="" echo usageError
set versionToTest=%2
if not exist "%pathToPlay%\%2" echo dirError
if not exist "%pathToPlay%\%2\play.bat" echo playNotFound 
set version="%2"

:setPath
set PATH=%firstPath%;%pathToPlay%/%version%
goto success

:usageError
echo Usage: $playcfg version {version}
goto end

:dirError
echo Dir not found: %pathToPlay%\%versionToTest%
goto end

:playNotFound
echo Play framework not found at dir %pathToPlay%\%versionToTest%\play.bat
goto end

:success
echo Se ha configurado la version %version% de play
goto end

:end
