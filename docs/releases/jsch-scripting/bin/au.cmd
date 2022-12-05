@echo off
REM
REM START JSRunner
REM

@setlocal

call :set_home
call :set_java_opts
call :set_main_lib

rem ################################
rem ########## START java ##########
rem ################################
"%_JAVACMD%" ^
   %_JAVA_OPTS% ^
   %_MAIN_CLASSPATH% ^
   yupen.au.Main %*
goto end

rem #######################################
rem ########## START subroutines ##########
rem #######################################

:add_main_classpath
  if "%_MAIN_CLASSPATH%"=="" (
    rem set _MAIN_CLASSPATH=%~1
    set _MAIN_CLASSPATH=%~f1
  ) else (
    set _MAIN_CLASSPATH=%_MAIN_CLASSPATH%;%~f1
  )
goto :eof

:extract_jar_to_classpath
  set _LIB_PATH=%~1
  for /r %_LIB_PATH% %%f in (*.jar) do call :add_main_classpath "%%f"
  if not "%_MAIN_CLASSPATH%"=="" set _MAIN_CLASSPATH=-cp "%_MAIN_CLASSPATH%"
goto :eof

:set_main_lib
  set _MAIN_CLASSPATH=
  call :add_main_classpath "%_BASE_HOME_DIR%\..\..\target\classes"
  call :extract_jar_to_classpath "%_BASE_HOME_DIR%\lib"
goto :eof

:set_home
  set "_BIN_DIR=%~dps0"
  for %%i in (%~dps0..) do set _BASE_HOME_DIR=%%~fi
goto :eof

:set_java_opts
  rem set "_JAVACMD=%_BASE_HOME_DIR%\jre\bin\java.exe"
  set "_JAVACMD=java.exe"
  set _JAVA_OPTS=-Ddescriptor.url="https://yuhere.github.io/py2aco/releases/jsch-scripting/au.xml" -Dbase.home="%_BASE_HOME_DIR%"
goto :eof

rem #####################################
rem ########## END subroutines ##########
rem #####################################

:end
@endlocal

@"%COMSPEC%" /C exit %ERRORLEVEL% >nul
