
namespace :db do
  desc "Auto upgrade the database and dump the schema (see mini_record gem for details)"
  task :auto_upgrade => :environment do
    Dir[Rails.root.join("app/models/*.rb")].map { |file| require file }

    ActiveRecord::Base.auto_upgrade!
    Rake::Task['db:schema:dump'].invoke
    Rake::Task['db:test:prepare'].invoke if Rails.env.development?
  end
end
