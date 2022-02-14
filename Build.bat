echo "Building the project: %date% : %time%"
cd C:\Users\michel\Desktop\testJenkins2
mkdir jenkins-git
mkdir jenkins-git-3
echo Hola mundo > text.txt
IF %ERRORLEVEL% EQU 1 (exit /B 0) ELSE (exit /B 1)
