task default: %w[test]

task :release do
  system 'git commit -am "release"'
  system 'middleman build'
  system 'git checkout master'
  system 'yes | cp -fR build/** .'
  system 'git add -am "Release"'
  system 'git push -f origin master'
end
