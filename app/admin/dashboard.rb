ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    
    columns do
      column do
        panel "Recent Products" do
          table_for Product.order("updated_at").limit(5) do
            column :title do |product|
              link_to product.title, [:admin, product]
            end
            column :description
            column :updated_at
          end
        end
      end

      column do
        panel "Info" do
          para "This is the Admin area for the Encore Furnishings website. You can view, add, edit, and delete products from this area. Click on the 'Products' link at the top of the page to do so. Enjoy."
        end
      end

    end #columns
  end # content
end
