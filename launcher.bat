:: initialize environment variables 
echo Input parameter : %1	
SET PATH_POSTMAN_CI=%1
SET PATH_NMN=C:\Users\amin.senouci\AppData\Roaming\npm

:: Execute test set Postman
%PATH_NMN%\newman run "%PATH_POSTMAN_CI%\Collection Demo.postman_collection.json" -e "%PATH_POSTMAN_CI%\Env_var.postman_environment.json" --insecure --reporters junit --reporter-junit-export "%PATH_POSTMAN_CI%\results\report.xml
::--insecure --reporters junit,cli --reporter-junit-export   "%PATH_POSTMAN_CI%\results\report.xml"
