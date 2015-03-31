desc "Deploy to production"
task :deploy do
  uglify
  `rsync -avzh --exclude=.git $(pwd) tetsuo:~/`
  puts "Succesfully deployed to http://indrode.com/"
end

desc "Uglify CSS files"
task :uglify do
  uglify
  puts "Succesfully uglified stylesheets to css/styles.css"
end

def uglify
  `uglifycss css/*.css > css/styles.css`
end
