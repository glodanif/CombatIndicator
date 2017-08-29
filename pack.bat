rem for /d %%X in (*) do "c:\Program Files\7-Zip\7z.exe" a -tzip "CombatIndicator.zip" "Images" "Sounds"

@echo off
setlocal

set "pattern=Version"
set "SEARCHTEXT=## Version: v"
set "REPLACETEXT="

for /f "tokens=*" %%a in (CombatIndicator.toc) do (

        set "line=%%a"
        setlocal enabledelayedexpansion
        if not "!line:%pattern%=!"=="!line!" (
            echo %%a

            SET string=%%a
            SET modified=!string:%SEARCHTEXT%=%REPLACETEXT%!

            echo !modified!
        )
        endlocal

)

set "IGNORED = .gitignore .git .idea"
set LIST = for %%x in (*) do set LIST=!LIST! %%x

(
 for %%i in (%LIST%) do (
  echo(%%i
  echo(
 )
)

@rem "c:\Program Files\7-Zip\7z.exe" a -tzip "CombatIndicator.zip" %LIST%