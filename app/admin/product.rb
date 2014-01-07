ActiveAdmin.register Product do
  permit_params :title, :description, :price_cents, :price_currency

  index do
    column :id
    column :title
    column :description
    column :price
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
    end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Product Details" do
      f.input :title
      f.input :description
      f.input :price_cents
      f.input :price_currency
    end
    f.actions
  end
  
end
