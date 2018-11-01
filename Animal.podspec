Pod::Spec.new do |s|

  s.name         = "Animal"
  s.version      = "0.0.1"
  s.summary      = "Animations compatible with auto layout"
  s.description  = "Animations compatible with auto layout"
  s.homepage     = "https://github.com/OscarLemus/Animal"
  s.license      = "MIT"
  s.author       = { "Oscar Zamora" => "oscar.lemus@ozmovil.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/OscarLemus/Animal.git", :tag => "#{s.version}" }
  s.source_files  = "Animal/*.{swift}"
  s.swift_version = "4.2"

end


