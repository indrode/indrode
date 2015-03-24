desc "Deploy to production"
task :deploy do
  `rsync -avzh --exclude=.git $(pwd) tetsuo:~/`
  puts "Succesfully deployed to http://indrode.com/"
end
