Pod::Spec.new do |s|
  s.name = 'Nevanlinna'
  s.version = '0.6.0'
  s.license = 'MIT'
  s.summary = 'Nevanlinna is a framework that expose extensions.'
  s.description  = <<-DESC
    As we always use the same or a really close object, we made severals components that we want to share with you.
                   DESC
  s.homepage = 'https://github.com/MoveUpwards/Nevanlinna.git'
  s.authors = { 'Damien NOËL DUBUISSON' => 'damien@slide-r.com', 'Loïc GRIFFIÉ' => 'loic@slide-r.com' }
  s.source = { :git => 'https://github.com/MoveUpwards/Nevanlinna.git', :tag => s.version }
  s.swift_version               = '5.2'
  s.ios.deployment_target       = '9.1'
  s.source_files                = 'Nevanlinna/Source/**/*.swift'
  s.frameworks                  = 'Foundation'
end
