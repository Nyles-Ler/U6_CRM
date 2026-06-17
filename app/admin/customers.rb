ActiveAdmin.register Customer do

  # Added image to the list of permitted parameters
  permit_params :full_name, :phone_number, :email_address, :notes, :image

  # Added filters for the new attributes
  filter :full_name
  filter :phone_number
  filter :email_address
  filter :notes

  # Added image to the index page
  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file
    end

    f.actions
  end
end
