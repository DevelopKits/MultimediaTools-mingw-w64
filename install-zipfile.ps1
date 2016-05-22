# Please run this as a users with Administrator permissions
# so that the program files can be written into the given 
# directory. Alternatively, you can change the -DestinationPath
# to something local to your user directory, and leave your
# system Program Files directory untouched.

echo "About to unzip archive into FFmpeg binary directory...";
Expand-Archive -Path C:\Users\john_000\Downloads\mingw-multimedia-executables-shared.zip -DestinationPath 'C:\Program Files\ffmpeg' -Verbose:$true -Force:$true -Debug:$true;
echo "Unzip process done.";
echo "About to set environment variables. If this fails, it could be";
echo "because you are running this script with insufficient permissions.";
echo "FONTCONFIG_FILE=fonts.conf";
[Environment]::SetEnvironmentVariable("FONTCONFIG_FILE", "fonts.conf", "User");
echo "FONTCONFIG_PATH=C:\Users\%USERNAME%\AppData\Local\fontconfig";
[Environment]::SetEnvironmentVariable("FONTCONFIG_PATH", "C:\Users\%USERNAME%\AppData\Local\fontconfig", "User");
echo "FREI0R_PATH=%ProgramFiles%\ffmpeg\lib\frei0r-1";
[Environment]::SetEnvironmentVariable("FREI0R_PATH", "%ProgramFiles%\ffmpeg\lib\frei0r-1", "User");
echo "TESSDATA_PREFIX=C:\Program Files\ffmpeg\share\";
[Environment]::SetEnvironmentVariable("TESSDATA_PREFIX", "C:\Program Files\ffmpeg\share\", "User");
echo "TERMINFO=C:\Program Files\ffmpeg\share\terminfo";
[Environment]::SetEnvironmentVariable("TERMINFO", "C:\Program Files\ffmpeg\share\terminfo", "User");

