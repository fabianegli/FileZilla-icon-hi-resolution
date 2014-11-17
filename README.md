FileZilla-icon-hi-resolution
============================

My contribution to a high resolutino icon for FileZilla. This project is purely driven by my passion to make our daily life more beautiful.

*The FileZillaHighResolution.icns of this little project was integrated into FileZilla as FileZilla.icns in [revision 6135](http://svn.filezilla-project.org/filezilla?view=rev&amp;revision=6135) on October 23, 2014. It is fun to see it is actually used!*

Workflow
========
The following steps lead to my proposed icons file. Steps 3.-5. can be done by running the icns-maker.sh script.

1. Downloaded the FileZilla Logo in SVG format from Wikipedia
2. Assigned the SVG file the "sRGB IEC61966-2.1.icc" color profile using Inkscape
3. Used Inkscape command line tool to export the rasterized logo to all the logo sizes of 128 pixels and more
4. Used iconutil command from Apple to decompose the FileZilla.icns nowadays distributed with FileZilla client
5. Used iconutil command from my Mac to compose the FileZilla.icns from the original icons images of the smaller sizes and the newly generated images of 128 pixels and more.

Shortcomings of this project
============================
This version of the high resolution icon for FileZilla is based on the SVG from Wikipedia. Even though I think for me it was a reasonable choice, there is a more detailed version of the logo available from http://opensourcebydesign.org/files/filezilla-hires-icon.zip but for me, it still looks/is a little bit pixelated in the 512x512@2x version.

Aknowldgement
=============
Without the creator of the FileZilla logo/icon, Alex Kovac all this would not be here. The beauty of his creation made me do this.
Many thanks go to GitHub for hosting this site.
