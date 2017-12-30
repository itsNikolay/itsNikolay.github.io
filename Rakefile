task default: %w[test]

task :release do
  system %{
git commit -am "Release" && \
middleman build && \
git checkout master && \
yes | cp -fR build/** . && \
git add . && \
git commit -am "Release" && \
git push -f origin master
  }
end
