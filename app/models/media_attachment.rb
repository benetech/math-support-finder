class MediaAttachment < ActiveRecord::Base
  belongs_to :matrixEntry, inverse_of: :media_attachments
end
