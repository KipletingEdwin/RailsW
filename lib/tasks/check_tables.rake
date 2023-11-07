namespace :db do
    desc "Check if any tables exist in the database"
    task check_tables: :environment do
      table_names = ActiveRecord::Base.connection.tables
  
      if table_names.any?
        puts "There are tables in the database."
        puts "Table names: #{table_names.join(', ')}"
      else
        puts "There are no tables in the database."
      end
    end
  end
  