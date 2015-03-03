#
#  Be sure to run `pod spec lint MGSplitViewController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name               = "GoogleAnalyticsSDK"
  s.version            = "3.0.3"
  s.summary            = "**Unofficial* mirror for the Google Analytics SDK to be used as a submodule on iOS projects."
  s.description        = <<-DESC
                         Mirror for the Google Analytics SDK to be used as a submodule on iOS projects.
                         I hope it is sufficient to make CocoaPods happy.
                         DESC
  s.homepage           = "https://github.com/asprega/GoogleAnalyticsSDK"
  s.license            = "BSD"
  s.author             = { "Andrea Sprega" => "asprega@vendini.com" }
  s.platform           = :ios, "5.0"
  s.source             = { :git => "https://github.com/asprega/GoogleAnalyticsSDK.git", :tag => 'v3.0.3' }
  s.source_files       = "*.{h,m}"
  s.exclude_files      = "Classes/Exclude"
  s.libraries          = "GoogleAnalyticsServices", "z"
  s.vendored_libraries = "libGoogleAnalyticsServices.a"
  s.preserve_paths     = "libGoogleAnalyticsServices.a"
  s.xcconfig           = { "LIBRARY_SEARCH_PATHS" => "$(PODS_ROOT)/GoogleAnalyticsSDK" }
  s.frameworks         = "CoreData", "SystemConfiguration" 
  s.requires_arc       = true
end

