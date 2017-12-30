task default: %w[test]

task :release do
  system %{
git commit -am "Release" && \
git push -f origin source && \
middleman build && \
git checkout master && \
yes | cp -fR build/** . && \
git add . && \
git commit -am "Release" && \
git push -f origin master
  }
end


task :server do
  system %{
open http://localhost:4567 && \
middleman server
  }
end

task :build do
  system %{
middleman build --clean
  }
end
