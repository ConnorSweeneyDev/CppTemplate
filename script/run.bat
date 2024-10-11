@ECHO OFF

SET COMMAND=pwsh -Command "./binary/windows/CppTemplate.exe"
IF "%1" == "-wezterm" (wezterm cli spawn --cwd %CD% %COMMAND%)
IF "%1" == "" (START %COMMAND%)
