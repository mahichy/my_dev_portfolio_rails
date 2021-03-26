ActiveAdmin.register Project do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	permit_params :name, :content, :image, :technology, :app_how, :url

	sortable tree: false,
				sorting_attribute: :tag

	index :as => :sortable do
		label :name

		actions
	end


	index do
		selectable_column
		column :name
		column :tag
		column :content
		column :url

		actions
	end


	show do |t|
		attributes_table do
			row :name
			row :content
			row :image do
				project.image? ? image_tag(project.image_url, height: '100') : content_tag(:span, "No photo display")
			end
			row :url
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :content
			f.input :image, hint: f.project.image? ? image_tag(project.image_url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
			f.input :technology
			f.input :app_how
			f.input :url
		end

		f.actions
	end

end
