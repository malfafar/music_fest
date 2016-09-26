ActiveAdmin.register Photo do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #

  permit_params :title, :description, :photo

  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end



  form do |f|
    f.inputs "Project Details" do
      f.input :title
      f.input :description
      f.input :photo, :as => :file, :hint => f.object.photo.present? \
        ? image_tag(f.object.photo.url(:thumb))
        : content_tag(:span, "no photo page yet")
      # Will preview the image when the object is edited
    end
    f.actions
  end

  index do
    id_column
    column :title
    column :description do |photo|
      truncate(photo.description, omision: "...", length: 25)
    end

    actions
  end

end
