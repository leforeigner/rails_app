class Account < ApplicationRecord
	mount_uploader :icon, IconUploader
end
