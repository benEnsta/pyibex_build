ls "%CONDA_PREFIX%"\include\ibex
SET DISTUTILS_USE_SDK=1
SET MSSdk=1
"%WIN_SDK_ROOT%\%WINDOWS_SDK_VERSION%\Setup\WindowsSdkVer.exe" -q -version:15
"%WIN_SDK_ROOT%\%WINDOWS_SDK_VERSION%\Bin\SetEnv.cmd" /x64 /MT /release

"%PYTHON%" setup.py build_ext -I "%CONDA_PREFIX%"\include\ibex -L "%CONDA_PREFIX%"\lib -DWIN32 -D/MT -D/Release
if errorlevel 1 exit 1
"%PYTHON%" setup.py install
if errorlevel 1 exit 1

:: Add more build steps here, if they are necessary.

:: See
:: http://docs.continuum.io/conda/build.html
:: for a list of environment variables that are set during the build process.
