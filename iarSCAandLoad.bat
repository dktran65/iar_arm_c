set CUR_DIR=%cd%
kwbuildproject --url http://192.168.0.99:8080/IARDEMO -f -o kwtables kwinject.out --replace-path %CUR_DIR%\IAR_ARM_C=IAR_ARM_C
kwadmin --url http://192.168.0.99:8080 load IARDEMO kwtables