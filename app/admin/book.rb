ActiveAdmin.register Book do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :cover, :title, :description, :isbn

  index do
    column :title
    column :description
    column :isbn
    column 'Cover' do |book| image_tag(book.cover.url(:thumb)) end
    actions
  end

  filter :title
  filter :description
  filter :isbn

  form do |f|
    f.inputs "Create New Book", multipart: true do
      f.input :title, required: true
      f.input :description, required: true
      f.input :isbn, required: true
      f.input :cover, required: true, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :isbn
      row :cover do |book| image_tag(book.cover.url(:thumb)) end
    end
  end
end
