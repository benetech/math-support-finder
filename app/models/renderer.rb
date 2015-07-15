class Renderer < ActiveRecord::Base
  has_many :matrix_entries, inverse_of: :renderer
  has_and_belongs_to_many :browser_readers

  def title_with_version
    "#{title} #{version}"
  end
end
