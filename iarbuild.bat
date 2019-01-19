echo off
set IAR_ARM_BUILD="C:\IAR_Systems\ARM_EmbeddedWorkbench8.2\common\bin\"

%IAR_ARM_BUILD%\IarBuild.exe BasicDebugging.ewp -build Debug -log all

@REM Do Not Use these below, it is for referenrce only!!!
@REM kwinject -T kwinject.out.trace build1.bat
@REM kwinject -t kwinject.out.trace -o kwinject.out
@REM kwbuildproject --url http://192.168.0.99:8080/IARDEMO -f -o kwtables kwinject.out --replace-path C:\ProjectSandbox\IAR_ARM_C=IAR_ARM_C
@REM kwadmin --url http://192.168.0.99:8080 load IARDEMO kwtables --name first_build