class ArchitectProfile < ApplicationRecord
  belongs_to :architect

  has_attached_file :architect_avatar,
      styles: {
        thumb: '100x100#',
        small: '150x150>',
        medium: '200x200'
              }, default_url: '/images/:style/missing.png'

  validates_attachment_content_type :architect_avatar, content_type: /\Aimage\/.*\z/

end
