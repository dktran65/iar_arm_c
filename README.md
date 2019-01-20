"# iar_arm_c" 

The contents on each batch file are specific to my environment, make sure you change the appropriate parameters
to refect your environment needs.
- The iarbuild.bat file is for capture the trace information and generate Build Spec
- The iarNativeBuild file are for setup to build IAR natively.
- The iarKwSCAKwLoad file is for running the Static Code Analysis and then Load the result to Kw Portal.

Three batch files:

	iarbuild.bat	﻿
		del kwin*.*
		kwinject -T kwinject.out.trace iarbuild2.bat
		kwinject -t kwinject.out.trace -o kwinject.out
		
	iarNativeBuild.bat	﻿
		setlocal
		set IAR_ARM_BUILD="C:\IAR_Systems\EmbeddedWorkbench8.2\common\bin\"
		%IAR_ARM_BUILD%\IarBuild.exe BasicDebugging.ewp -build Debug -log all
		endlocal

	iarKwSCAKwLoad.bat
		kwbuildproject --url http://192.168.0.99:8080/IARDEMO -f -o kwtables kwinject.out --replace-path C:\ProjectSandbox\IAR_ARM_C=IAR_ARM_C
		kwadmin --url http://192.168.0.99:8080 load IARDEMO kwtables