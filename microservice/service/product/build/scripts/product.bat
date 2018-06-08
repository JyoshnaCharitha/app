@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  product startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and PRODUCT_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\product-microservice-0.6.jar;%APP_HOME%\lib\scala-library-2.10.3.jar;%APP_HOME%\lib\akka-actor_2.10-2.2.4.jar;%APP_HOME%\lib\spray-can-1.2.1.jar;%APP_HOME%\lib\spray-routing-1.2.1.jar;%APP_HOME%\lib\spray-caching-1.2.1.jar;%APP_HOME%\lib\spray-json_2.10-1.2.6.jar;%APP_HOME%\lib\scalaz-core_2.10-7.0.6.jar;%APP_HOME%\lib\config-1.2.1.jar;%APP_HOME%\lib\reactivemongo_2.10-0.10.0.jar;%APP_HOME%\lib\spray-io-1.2.1.jar;%APP_HOME%\lib\spray-http-1.2.1.jar;%APP_HOME%\lib\spray-util-1.2.1.jar;%APP_HOME%\lib\spray-httpx-1.2.1.jar;%APP_HOME%\lib\shapeless_2.10-1.2.4.jar;%APP_HOME%\lib\concurrentlinkedhashmap-lru-1.4.jar;%APP_HOME%\lib\parboiled-scala_2.10-1.1.6.jar;%APP_HOME%\lib\reactivemongo-bson-macros_2.10-0.10.0.jar;%APP_HOME%\lib\netty-3.5.9.Final.jar;%APP_HOME%\lib\play-iteratees_2.10-2.2.0.jar;%APP_HOME%\lib\log4j-api-2.0-beta9.jar;%APP_HOME%\lib\log4j-core-2.0-beta9.jar;%APP_HOME%\lib\mimepull-1.9.4.jar;%APP_HOME%\lib\parboiled-core-1.1.6.jar;%APP_HOME%\lib\scala-compiler-2.10.3.jar;%APP_HOME%\lib\reactivemongo-bson_2.10-0.10.0.jar;%APP_HOME%\lib\scala-stm_2.10-0.7.jar;%APP_HOME%\lib\scala-reflect-2.10.4.jar

@rem Execute product
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %PRODUCT_OPTS%  -classpath "%CLASSPATH%" io.github.zutherb.appstash.shop.service.product.Boot %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable PRODUCT_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%PRODUCT_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
