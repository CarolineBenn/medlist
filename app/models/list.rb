require 'csv'

class List < ActiveRecord::Base
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |list|
        csv << list.attributes.values_at(*column_names)
      end
    end
  end

  def self.import(file)
    List.delete_all
    CSV.foreach(file.path, headers: true) do |row|
      List.create! row.to_hash
    end
  end
  
end