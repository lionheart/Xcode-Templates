INSTALL_PATH="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File Templates/Source/LH Cocoa Touch Class.xctemplate"

all:
	sudo ln -s `pwd`/"LH Cocoa Touch Class.xctemplate" $(INSTALL_PATH) 

clean:
	sudo rm -rf $(INSTALL_PATH)
