# Use Case
Imagine you have converted many video files with an automated script (batch, bash, etc...), you have something like this:

    /path/to/original/video/files
        |__ GH010001.mp4
        |__ GH010002.mp4
        |__ GH010003.mp4
        |__ GH010004.mp4
        |__ GH010005.mp4
        ...
        |__ GH019999.mp4
    
    /path/to/converted/video/files
        |__ MyVacations0001.mp4
        |__ MyVacations0002.mp4
        |__ MyVacations0003.mp4
        |__ MyVacations0004.mp4
        |__ MyVacations0005.mp4
        ...
        |__ MyVacations9999.mp4
  
 You want to check if the video content is the same:
    
    GH010001.mp4 = MyVacations0001.mp4
    GH010002.mp4 = MyVacations0002.mp4
    GH010003.mp4 = MyVacations0003.mp4
    ...
     
 To check if you have no error in your convertion script (wrong loop, wrong file naming, etc...). Example of wrong script:
 
    MyConvertingProgram -input GH010001.mp4 -output MyVacations0001.mp4
    MyConvertingProgram -input GH010002.mp4 -output MyVacations0001.mp4
    MyConvertingProgram -input GH010003.mp4 -output MyVacations0001.mp4
    ...

# About
My little script open both video files at specific timestamp using MPC-HC to let you checking if the content is the same.
Each time you press Enter to continue, it will close the current video files then open the new ones.
