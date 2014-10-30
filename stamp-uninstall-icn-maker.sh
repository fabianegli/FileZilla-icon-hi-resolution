#!/usr/env sh
# This file can be sourced in a bash shell on Mac OSX
# Requirements: ImageMagick, Inkscape and iconutil are is installed
#  
# the following lines generate a high resolution icns file for FileZilla based on the FileZilla.icns

# This extracts the original images from FileZilla.icns
# I do it, because I want to keep the low resolution Images 
# iconutil -c iconset FileZilla.icns # This is the FileZilla.icns from the distribution found in FileZilla.app/Contents/Resources/
rm -rf StampUninstallFileZilla.iconset
mkdir StampUninstallFileZilla.iconset

# make the new iconset directory
cp -r FileZilla_stamp.iconset/ UninstallStampUninstallFileZilla.iconset

# Define wich size should have which source svg 
### low resolution
inkscape FileZilla_stamp.svg --export-png=StampUninstallFileZilla.iconset/icon_16x16.png --export-width=16 --export-height=16
inkscape FileZilla_stamp.svg --export-png=StampUninstallFileZilla.iconset/icon_32x32.png --export-width=32 --export-height=32
inkscape FileZilla_stamp.svg --export-png=StampUninstallFileZilla.iconset/icon_128x128.png --export-width=128 --export-height=128
inkscape FileZilla_stamp.svg --export-png=StampUninstallFileZilla.iconset/icon_256x256.png --export-width=256 --export-height=256
inkscape FileZilla_stamp.svg --export-png=StampUninstallFileZilla.iconset/icon_512x512.png --export-width=512 --export-height=512
### high resolution
inkscape FileZilla_stamp.svg --export-png=StampUninstallFileZilla.iconset/icon_16x16@2x.png --export-width=32 --export-height=32
inkscape FileZilla_stamp.svg --export-png=StampUninstallFileZilla.iconset/icon_32x32@2x.png --export-width=64 --export-height=64
inkscape FileZilla_stamp.svg --export-png=StampUninstallFileZilla.iconset/icon_128x128@2x.png --export-width=256 --export-height=256
inkscape FileZilla_stamp.svg --export-png=StampUninstallFileZilla.iconset/icon_256x256@2x.png --export-width=512 --export-height=512
inkscape FileZilla_stamp.svg --export-png=StampUninstallFileZilla.iconset/icon_512x512@2x.png --export-width=1024 --export-height=1024

iconutil -c icns StampUninstallFileZilla.iconset
