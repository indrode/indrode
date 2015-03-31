desc "Deploy to production"
task :deploy do
  `rsync -avzh --exclude=.git $(pwd) tetsuo:~/`
  puts "Succesfully deployed to http://indrode.com/"
end

desc "Uglify CSS files"
task :uglify do
  `uglifycss css/*.css > css/styles.css`
  puts "Succesfully uglified stylesheets to css/styles.css"
end
