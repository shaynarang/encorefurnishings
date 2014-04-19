ActiveAdmin.register Product do
  permit_params :title, :description, :price, :price_cents, :price_currency, :sold, :image, :image_delete

  index do
    column :id
    column :title
    column :description
    column :price
    column :sold
    column "Added", :created_at
    column "Last Updated", :updated_at
    default_actions
  end

  show do |product|
    attributes_table do
      row :title
      row :description
      row :price do |product|
        number_to_currency product.price
      end
      row :sold
      row :image do
        image_tag product.image.url(:thumb).to_s
      end
    end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Product Details" do
      f.input :title
      f.input :description
      f.input :price
      f.input :sold, :as => :boolean
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:thumb)), :id => "thumbnail"
      if f.object.image?
        f.input :image_delete, :as => :boolean, :required => false, :label => 'Remove Image'
      end
    end
    f.actions
  end
  
end
