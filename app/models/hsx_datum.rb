class HsxDatum < ActiveRecord::Base
  belongs_to      :movie
  attr_accessible :gross, :price, :theaters, :url
end
