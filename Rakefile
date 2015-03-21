desc "Deploy to production"
task :deploy do
  `rsync -avzh --exclude=.git $(pwd) tetsuo:~/`
  puts "deployed!"
end
