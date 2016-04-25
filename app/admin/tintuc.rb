ActiveAdmin.register Tintuc do

    permit_params :title, :category_id, :image, :content, :tomtat

	index do 
		column :title
		column :category
		actions
	end

	form do |f|
		f.inputs do
			input :category, label: "Category"
			input :title, label: "Tiêu đề"
			input :tomtat, label: "Tóm tắt"
			input :content, label: "Nội dung",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			
			input :image, hint: f.tintuc.image? ? image_tag(tintuc.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
			
		end

		actions
	end


end
