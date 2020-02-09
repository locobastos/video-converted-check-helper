# Use Case
Imagine you have converted many video files with an automated script (batch, bash, etc...), you have something like this:

    /path/to/original/video/files
        |__ GH010001.mp4
        |__ GH010002.mp4
        |__ GH010003.mp4
        |__ GH010004.mp4
        |__ GH010005.mp4
        ...
        |__ GH010038.mp4
    
    /path/to/converted/video/files
        |__ MyVacations01.mp4
        |__ MyVacations02.mp4
        |__ MyVacations03.mp4
        |__ MyVacations04.mp4
        |__ MyVacations05.mp4
        ...
        |__ MyVacations38.mp4
  
 You want to check if the video content is the same:
    
    GH010001.mp4 = MyVacations01.mp4
    GH010002.mp4 = MyVacations02.mp4
    GH010003.mp4 = MyVacations03.mp4
    ...
     
 To check if you have no error in your convertion script (wrong loop, wrong file naming, etc...). Example of wrong script:
 
    MyConvertingProgram -input GH010001.mp4 -output MyVacations01.mp4
    MyConvertingProgram -input GH010002.mp4 -output MyVacations01.mp4
    MyConvertingProgram -input GH010003.mp4 -output MyVacations01.mp4
    ...

# About
My little script open both video files at specific timestamp using MPC-HC to let you checking if the content is the same.

Each time you press Enter to continue, it will close the current video files then open the new ones.

I'm using two monitors and my videos are 1920x1080.

# Requirement
* MPC-HC : https://mpc-hc.org/downloads/
* AutoIt : https://www.autoitscript.com/site/autoit/downloads/

You can use both intaller or portable mode of MPC-HC & AutoIT.

# Usage
You'll have to customize almost the entire script:

    Import-Module        = Set the "AutoItX.psd1" path.
    $MPC                 = Set the mpc-hc64.exe or mpc-hc.exe path.
    $Original_Folder     = Set the location of the original videos.
    $Converted_Folder    = Set the location of the converted videos.
    $Timestamp           = Set the time where the video have to be played (to skip intros for examples)
    $Original_Numbering  = Set the original numbering format, in this example, it is 0001, 0002, 0003... So it's "{0:0000}" -f $_
    $Converted_Numbering = Set the converted numbering format, in this example, it is 01, 02, 03... So it's "{0:00}" -f $_
    $Original_Filename   = Set the your original video file name pattern.
    $Converted_Filename  = Set the your converted video file name pattern.
    -X -Y                = Set the windows position.
    -Widht -Height       = Set the windows size.
