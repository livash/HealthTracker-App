desc "Update username column in the table users"
task :fix_username => :environment do

User.all.each { |user| user.save! }

end