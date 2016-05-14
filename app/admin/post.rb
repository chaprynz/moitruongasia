ActiveAdmin.register Post do

permit_params :title, :category_id, :image, :slide, :tongquan, :tieuchuan, :thongsokythuat, :thongtinsanpham, :gia, :slug

	index do 
		column :title
		column :category
		actions
	end

	form do |f|
		f.inputs do
			input :category, label: "Danh mục"
			input :title, label: "Tiêu đề"
			f.input :slug
			input :gia, label: "Giá"
			input :tongquan, label: "Tổng quan sản phẩm",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			input :tieuchuan, label: "Tiêu chuẩn",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			input :thongtinsanpham, label: "thông tin sản phẩm",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			input :thongsokythuat, label: "Thông số kỹ thuật",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			
			
			input :slide, label: "slide"
			input :image, hint: f.post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
			
		end

		actions
	end


end
