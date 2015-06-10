class MediaAttachment < ActiveRecord::Base
  belongs_to :matrix_entry, inverse_of: :media_attachments
end
