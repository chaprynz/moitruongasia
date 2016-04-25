ActiveAdmin.register Khachhang do
    permit_params :name, :image, :content, :address
    	index do 
    		column :name
    		column :address
    		actions
    	end
    
    	form do |f|
    		f.inputs do
    			input :name, label: "Tên khách hàng"
    			input :address, label: "Địa Chỉ"
    			input :content, label: "Nội dung",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
    			
    			input :image, hint: f.khachhang.image? ? image_tag(khachhang.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
    			
    		end
    
    		actions
    	end


end
