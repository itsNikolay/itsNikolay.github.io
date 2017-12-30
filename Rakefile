task default: %w[test]

task :release do
  system 'git commit -am "Release"'
  system 'middleman build'
  system 'git checkout master'
  system 'yes | cp -fR build/** .'
  system 'git add'
  system 'git commit -am "Release"'
  system 'git push -f origin master'
end
