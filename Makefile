BASE_DIRECTORY=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates
FILE_INSTALL_PATH=$(BASE_DIRECTORY)/File Templates/Source
PROJECT_INSTALL_PATH=$(BASE_DIRECTORY)/Project Templates/iOS/Application

all: project_templates file_templates

project_templates:
	sudo ln -s `pwd`/"Lionheart Base.xctemplate" "$(PROJECT_INSTALL_PATH)"
	sudo ln -s `pwd`/"Lionheart Bundle Base.xctemplate" "$(PROJECT_INSTALL_PATH)"
	sudo ln -s `pwd`/"Lionheart Application Base.xctemplate" "$(PROJECT_INSTALL_PATH)"
	sudo ln -s `pwd`/"Lionheart Application.xctemplate" "$(PROJECT_INSTALL_PATH)"
	sudo ln -s `pwd`/"Lionheart Cocoa Touch Application Base.xctemplate" "$(PROJECT_INSTALL_PATH)"
	sudo ln -s `pwd`/"Lionheart iOS Base.xctemplate" "$(PROJECT_INSTALL_PATH)"
	sudo ln -s `pwd`/"Lionheart iOS Application.xctemplate" "$(PROJECT_INSTALL_PATH)"
	sudo ln -s `pwd`/"Lionheart Core Data Cocoa Touch Application.xctemplate" "$(PROJECT_INSTALL_PATH)"

file_templates:
	sudo ln -s `pwd`/"Lionheart Cocoa Touch Class.xctemplate" "$(FILE_INSTALL_PATH)"

clean:
	sudo rm -rf "$(FILE_INSTALL_PATH)/Lionheart Cocoa Touch Class.xctemplate"
	sudo rm -rf "$(PROJECT_INSTALL_PATH)/Lionheart Base.xctemplate"
	sudo rm -rf "$(PROJECT_INSTALL_PATH)/Lionheart Bundle Base.xctemplate"
	sudo rm -rf "$(PROJECT_INSTALL_PATH)/Lionheart Application Base.xctemplate"
	sudo rm -rf "$(PROJECT_INSTALL_PATH)/Lionheart Application.xctemplate"
	sudo rm -rf "$(PROJECT_INSTALL_PATH)/Lionheart Cocoa Touch Application Base.xctemplate"
	sudo rm -rf "$(PROJECT_INSTALL_PATH)/Lionheart iOS Base.xctemplate"
	sudo rm -rf "$(PROJECT_INSTALL_PATH)/Lionheart iOS Application.xctemplate"
	sudo rm -rf "$(PROJECT_INSTALL_PATH)/Lionheart Core Data Cocoa Touch Application.xctemplate"
