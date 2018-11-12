
Pod::Spec.new do |s|

s.name         = "Animal"
s.version      = "0.0.3"
s.summary      = "Animations compatible with auto layout"


s.homepage     = "https://github.com/OscarLemus/Animal"
s.license      = { :type => "MIT", :file => "LICENSE" }
 

s.author             = { "Oscar Lemus" => "oscar.lemus@ozmovil.com" }

s.platform     = :ios
 

s.source       = { :git => "https://github.com/OscarLemus/Animal.git", :tag => s.version }
s.source_files  = "Animal", "Animal/**/*.{swift}"

s.ios.deployment_target  = "11.0"
s.frameworks = "UIKit"
s.swift_version = "4.2"

end
