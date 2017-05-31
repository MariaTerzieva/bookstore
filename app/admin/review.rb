ActiveAdmin.register Review do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :text, :book_id, :rating

  index do
    column :text
    column :rating
    column :book
    actions
  end

  filter :book
  filter :rating
  filter :text

  form do |f|
    f.inputs "Create New Review" do
      f.input :text, required: true
      f.input :book, required: true
      f.input :rating, required: true
    end
    f.actions
  end
end
