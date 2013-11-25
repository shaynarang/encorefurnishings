ActiveAdmin.register Product do
  index do
    column :id
    column :title
    column :description
    column "Added", :created_at
    column "Last Updated", :updated_at
    default_actions
  end
  
end
