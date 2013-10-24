class Project < ActiveRecord::Base
  def self.list_all
    self.all
  end
end
