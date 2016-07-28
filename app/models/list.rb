require 'csv'


class List < ActiveRecord::Base
  extend FriendlyId
  friendly_id :list_name, use: :slugged


  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |list|
        csv << list.attributes.values_at(*column_names)
      end
    end
  end

  def self.import(csv_file)
      line = 0
      errors = []

      CSV.foreach(csv_file.path, headers: true) do |row|
        list = List.find_or_initialize_by(list_name: row["list_name"])
        list.assign_attributes(row.to_hash)
        if list.valid?
          list.save!
        else
          errors << line
        end
        line += 1
      end
      return errors
    end

=begin
  ## WORKING BUT DODGY :-/
  def self.import(file)
    List.delete_all 
    CSV.foreach(file.path, headers: true) do |row|
        List.create! row.to_hash
    end
  end
=end

end