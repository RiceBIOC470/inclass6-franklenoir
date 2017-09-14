%Inclass asssignment 6. 

%1. a. Write a function which takes as inputs: a. a cell array of names. b.
% an array of numbers with the ages corresponding to the names, and c. a binary
% variable which is a P/F grade (true for pass) and returns a structure
% array called students with one structure storing this information for each student. 2. Write a
% function which takes your structure array of students as input and returns
% the average age of the students. 
% Walter Frank Lenoir
%1.
names = ["Sandy" "Patrick" "Bob"];
ages = [23 32 29];
grades = [1 0 0];
students = class_structure(names,ages,grades);
%2.
mean_age = class_mean_age(students);

%2. In this folder, you will find an immunofluorescence image of human stem
%cells stained for a gene called SOX2. Write a function which takes a
%filename as input and returns a structure containing metaData. Include at
%least the bitdepth, size, and date the image was taken. Do not include any
%information you do not understand. Hint: use the builtin function imfinfo
%b. Look at the field ImageDescription in the output of imfinfo - there is
%a lot of information here. Write code that gets the actual temperature
%from the camera out of this field. (Hint: it is preceded by the words
%"Actual Temperature" which don't appear anywhere else in
%ImageDescription). 
%Walter Frank Lenoir
%a
filename = '160611-AntiNodal-SD20x_f0003_w0002.tif';
meta = Meta_DataCreation(filename);


%b
pos = strfind(meta.ImageDescription,"Actual Temperature");
temp = str2num(meta.ImageDescription(pos+19:pos+22));

