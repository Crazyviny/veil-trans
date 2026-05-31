@echo off
setlocal enabledelayedexpansion

set OUTPUT=current-trans.md

if exist "%OUTPUT%" del "%OUTPUT%"

for /L %%N in (1,1,300) do (
    set NUM=00%%N
    set NUM=!NUM:~-3!

    if exist "!NUM!.md" (
        type "!NUM!.md" >> "%OUTPUT%"
        echo.>> "%OUTPUT%"
        echo !NUM!>> "%OUTPUT%"
        echo.>> "%OUTPUT%"
    )
)

echo Готово. Результат: %OUTPUT%
pause