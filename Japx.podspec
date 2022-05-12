Pod::Spec.new do |s|
  s.name = 'Japx'
  s.version = '4.0.0'
  s.summary = 'Lightweight JSON:API parser.'
  s.description = <<-DESC
Lightweight JSON:API parser that flattens complex JSON:API structure and turns it into simple JSON. It can also take simple JSON and turn it into JSON:API structure.
It works by transfering Dictionary to Dictionary, so you can use Codable, Unbox, Wrap, ObjectMapper, or any other object mapping tool that you preffer.
                       DESC

  s.homepage = 'https://github.com/infinum/Japx'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Infinum' => 'ios@infinum.hr', 'Vlaho Poluta' => 'vlaho.poluta@infinum.hr', 'Filip Gulan' => 'filip.gulan@infinum.hr' }
  s.source = { :git => 'https://github.com/infinum/Japx.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.platform = :ios, :osx
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.swift_version = '5.0'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |sp|
    sp.source_files = 'Japx/Classes/Core/**/*'
    sp.frameworks = 'Foundation'
  end

  s.subspec 'ObjC' do |sp|
    sp.source_files = 'Japx/Classes/ObjC/**/*'
    sp.dependency 'Japx/Core'
  end
end
