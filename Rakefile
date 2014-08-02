require 'rubygems'
require 'bundler/setup'
require 'haml'
require 'haml/exec'

task default: :compile
task :compile do
  hamls = Dir.glob('hamls/**/*.haml').delete_if { |path| path.match('partials') }
  hamls.each do |haml|
    p args = [haml, haml.gsub('hamls/', '').gsub('.haml', '.html')]
    opts = Haml::Exec::Haml.new(args)
    opts.parse
  end
end

task :open_chrome do
  %x{ google-chrome index.html }
end
