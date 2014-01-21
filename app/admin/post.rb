ActiveAdmin.register Post do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


  index do
    column :rank
    column :category
    column :title
    column :created_at
    column :body do |post|
        truncate(post.body, omision: "...", length: 100)
    end
    column :image_file_name
    actions
  end

  # index :as => :blog do
  #  title do |post|
  #    h3 post.id, :class => 'id'
  #    h2 post.title, :class => 'title'
  #    span post.created_at, :class => 'created_at'
  #    div post.image_file_name, :class => 'image'
  #    h4 truncate(post.body, :length => 200), :class => 'body'
  #  end
  # end


  # Putting more clean the input fields in active_admin:
  form do |f|
    f.inputs do
      f.input :category
      f.input :title
      f.input :body
      f.input :image
      f.input :rank
    end
    f.actions
  end
  
end
