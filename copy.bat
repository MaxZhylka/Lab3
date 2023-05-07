@echo off
chcp 65001


mkdir "C:\Users\dexho\Лабораторные\Группа\ФИО\batch\Скрытая папка"
mkdir "C:\Users\dexho\Лабораторные\Группа\ФИО\batch\Не скрытая папка"


attrib +h "C:\Users\dexho\Лабораторные\Группа\ФИО\batch\Скрытая папка"

xcopy /? > "C:\Users\dexho\Лабораторные\Группа\ФИО\batch\Не скрытая папка\copyhelp.txt"


xcopy "C:\Users\dexho\Лабораторные\Группа\ФИО\batch\Не скрытая папка\copyhelp.txt" "C:\Users\dexho\Лабораторные\Группа\ФИО\batch\Скрытая папка\copied_copyhelp.txt"


pause