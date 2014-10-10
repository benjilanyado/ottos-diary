ActiveAdmin.register Entry do
  permit_params :day, :month, :year, :body, :image_name

  index do
    column :id
    column :day
    column :month
    column :year
    actions
  end

  form do |f|
    f.inputs "Entry" do
      f.input :day
      f.input :month
      f.input :year
      f.input :body
      f.input :image_name
    end
    f.actions
  end
end
