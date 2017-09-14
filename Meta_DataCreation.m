function meta = Meta_DataCreation(filename)
imginfo = imfinfo(filename);
temp.BitDepth = imginfo.BitDepth;
temp.FileSize = imginfo.FileSize;
temp.FileModDate= imginfo.FileModDate;
temp.ImageDescription = imginfo.ImageDescription;
meta = temp;
end