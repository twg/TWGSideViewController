Pod::Spec.new do |s|
  s.name             = "TWGSideViewController"
  s.version          = "0.1.0"
  s.summary          = "A side view controller that slides to the right or the left."
  s.description      = <<-DESC
                        TWGSideViewController provides a side view controller that slides to the right or the left.
                       DESC
  s.homepage         = "https://github.com/twg/TWGSideViewController"
  s.license          = 'MIT'
  s.author           = { "The Working Group" => "mobile@twg.ca" }
  s.source           = { :git => "https://github.com/twg/TWGSideViewController.git", :tag => s.version.to_s }
  s.platform         = :ios, '7.0'
  s.requires_arc     = true
  s.source_files     = 'Pod/Classes/**/*'
end