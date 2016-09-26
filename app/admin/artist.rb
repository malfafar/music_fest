ActiveAdmin.register Artist do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :chosen_date, :description, :website, :facebook, :twitter, :spotify, :videos_raw, :avatar, :photo
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
      f.input :name
      f.input :chosen_date
      f.input :description
      f.input :website
      f.input :facebook
      f.input :twitter
      f.input :spotify
      f.input :videos_raw, :as => :text
      f.input :avatar, :as => :file, :hint => f.object.avatar.present? \
        ? image_tag(f.object.avatar.url(:thumb))
        : content_tag(:span, "no avatar page yet")
      f.input :photo, :as => :file, :hint => f.object.photo.present? \
        ? image_tag(f.object.photo.url(:thumb))
        : content_tag(:span, "no photo page yet")
      # Will preview the image when the object is edited
    end
    f.actions
  end

  index do
    id_column
    column :name
    column :chosen_date
    actions
  end

  controller do
    before_action :test, only: [:update]


    def test
      puts "HEREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"
    end

  end

end
