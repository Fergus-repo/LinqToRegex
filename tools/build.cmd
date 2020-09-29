@echo off

dotnet restore --force "..\src\LinqToRegex.sln"

"C:\Program Files\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\msbuild" "..\src\LinqToRegex.sln" ^
 /t:Clean,Build ^
 /p:Configuration=Release,TreatWarningsAsErrors=true,WarningsNotAsErrors=1591 ^
 /v:normal ^
 /fl ^
 /m

if errorlevel 1 (
 pause
 exit
)

echo OK
pause
