namespace :db do
  desc "This populates the languages table with, for now, very limited data."
  task :bootstrap => :environment do
    # for now only these...
    ['C', 'C++', 'Java', 'PHP', 'Ruby'].each { |name| Language.create!(:name => name) }
  end
end