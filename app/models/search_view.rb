class SearchView < ApplicationRecord
  self.primary_key = :id
  self.table_name = 'search_view'

  def readonly?
    true
  end

  attr_accessor :path

end
