@echo off

for /f "tokens=*" %%a in (CombatIndicator.toc) do (
    set LINE=%%a
    setlocal enabledelayedexpansion
    if not "!LINE:Version=!"=="!LINE!" (
        set "ARCHIVE_NAME=CombatIndicator !LINE:## Version: =!.zip"
        goto :zip
    )
    endlocal
)

:zip
echo %ARCHIVE_NAME%

if not exist output\CombatIndicator mkdir output\CombatIndicator

set "IGNORED = .gitignore .git .idea"
set LIST = for %%x in (*) do set LIST=!LIST! %%x

echo %LIST%

for %%i in (%LIST%) do (
    echo %%i
)

@rem "c:\Program Files\7-Zip\7z.exe" a -tzip %ARCHIVE_NAME% %LIST%