class Project < ActiveRecord::Base

	if Rails.env.development?
		has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
	else
		has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" },
							:storage => :dropbox,
						    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
						    :path => ":style/:id_:filename"
	end

  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	validates :name, presence: true
	validates :content, presence: true

	def shortcontent
		content.length > 130? content[0..130] + "..." : content
	end

end