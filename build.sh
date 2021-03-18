call ant -f "%CD%\xyz\build.xml"
echo ELVL: %ERRORLEVEL% 
IF NOT %ERRORLEVEL% == 0 ( 
    echo ABORT: %ERRORLEVEL%
    call exit /b %ERRORLEVEL%
) ELSE (
    echo PROCEED: %ERRORLEVEL%
)