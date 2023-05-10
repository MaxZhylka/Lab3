@echo off
chcp 65001 >nul
setlocal EnableExtensions EnableDelayedExpansion

rem Указываем путь к папке
if "%~1"=="/path" (
    set "path=%~2"
) else (
    set "path=%~dp0"
)

rem Создаем массив для хранения размеров файлов в каждом подкаталоге
set "sizes="

rem Обходим все подкаталоги в папке
for /d %%i in ("%path%\*") do (
    rem Вычисляем размер файлов в текущем подкаталоге и сохраняем его в массиве
    set "size=0"
    for %%j in ("%%i\*") do (
        set /a size+=%%~zj
    )
    set "sizes=!sizes! %%~nxi: !size! байт"
)

rem Выводим размеры всех подкаталогов
echo %sizes%
exit 1
