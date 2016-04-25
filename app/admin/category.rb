ActiveAdmin.register Category do

    permit_params :name, :content, :tintuc
    
    show do |t|
		attributes_table do
			row :name
			row :content
			row :tintuc
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :content
			f.input :tintuc	
			
		end
		f.actions
	end


end
