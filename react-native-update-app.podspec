require("json");

packge = JSON.parse(File.read(File.join(__dir__, 'package.json')));

Pod::Spec.new do |s|
    s.name        = packge['name']
    s.version     = packge['version']
    s.summary     = packge['description']
    s.license     = packge['license']

    s.authors     = packge['author']
    s.homepage    = packge['homepage']
    s.platforms   = { :ios => "9.0", :osx => "10.14" }

    s.source       = { :git => "https://github.com/nongh90/react-native-update-app.git", :tag => "v#{s.version}" }
    s.source_files  = "ios/**/*.{h,m}"

    s.dependency 'React'
end