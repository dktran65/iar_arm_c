setlocal
set IAR_ARM_BUILD="C:\IAR_Systems\ARM_EmbeddedWorkbench8.2\common\bin\"

%IAR_ARM_BUILD%\IarBuild.exe BasicDebugging.ewp -build Debug -log all
endlocal
