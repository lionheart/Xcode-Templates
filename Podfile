source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '8'

pod 'KeychainItemWrapper', '1.2'
pod 'Mantle', '1.5.4'
pod 'Reachability', '3.2'
pod 'LHSCategoryCollection', '0.0.20'
pod 'LHSTableViewCells', '0.0.1'
pod 'LHSKeyboardAdjusting', '0.0.1'

# target 'Screenshots', :exclusive => true do
#   pod 'KIF', '~> 3.0'
# end

post_install do |installer_representation|
    installer_representation.project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_DIRECT_OBJC_ISA_USAGE'] = 'YES'
        end
    end
end
