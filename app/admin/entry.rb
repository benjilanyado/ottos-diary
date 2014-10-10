ActiveAdmin.register Entry do
  permit_params :day, :month, :year, :body

  index do
    column :id
    column :day
    column :month
    column :year
    actions
  end
end
