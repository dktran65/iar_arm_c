setlocal
set PATH=%PATH%;C:\IAR_Systems\ARM_EmbeddedWorkbench8.2\common\bin;
IarBuild.exe BasicDebugging.ewp -build Debug -log all
endlocal
