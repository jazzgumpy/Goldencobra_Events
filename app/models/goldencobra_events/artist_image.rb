# == Schema Information
#
# Table name: goldencobra_events_artist_images
#
#  id         :integer(4)      not null, primary key
#  image_id   :integer(4)
#  artist_id  :integer(4)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

module GoldencobraEvents
  class ArtistImage < ActiveRecord::Base
    belongs_to :artist
    belongs_to :image, :class_name => Goldencobra::Upload, :foreign_key => "image_id"
  end
end
