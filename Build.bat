echo "Building the project: %date% : %time%"
cd C:\Users\michel\Desktop\testJenkins2
mkdir jenkins-git
mkdir jenkins-git-2
echo "Hola" > text.txt
IF %ERRORLEVEL% EQU 1 (exit /B 0) ELSE (exit /B 1)'''
