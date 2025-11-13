# app-brainstorm-MEGprocessing
Brainlife app that preprocesses MEG data using Brainstorm. 


# main.m
Contains basic Brainstorm pipeline for analysis of MEG signals. **Same script as in original app! 
It currently:**

+ Sets Brainstorm and Reports directory 
+ Reads parameters from config.json file 
+ Sets parameters for filtering and PSD 
+ Starts Brainstorm in server mode 
+ Creates a new protocol
+ Imports raw MEG files (as links)
+ Applies a notch filter
+ Applies a high pass filter
+ Saves the report and deletes the protocol

**Next additions:**

+ Uncomment PSD to apply it as well 
+ Make snapshots of each result to add to the report 
+ Artifact detection




