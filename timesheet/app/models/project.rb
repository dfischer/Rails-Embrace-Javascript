class Project < ActiveRecord::Base
  def self.create_project(name, description)
    create!(name:name,
           description:description)
  end
end
