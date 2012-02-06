ActiveAdmin.register GoldencobraEvents::Panel, :as => "Event Panel" do
  menu :parent => "Event-Management"

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Allgemein" do
      f.input :title, :hint => "Der Titel des Panels, kann Leerzeichen und Sonderzeichen enthalten"
      f.input :description, :hint => "Die Beschreibung des Panels"
      f.input :link_url, :hint => "Link zur Panel-Seite"

      f.buttons
    end
  end

  index do
    column :title
    column :description
    column :link_url
    column :updated_at
    column "" do |event_panel|
      result = ""
      result += link_to("View", admin_event_panel_path(event_panel), :class => "member_link view_link")
      result += link_to("Edit", edit_admin_event_panel_path(event_panel), :class => "member_link edit_link")
      result += link_to("Delete", admin_event_panel_path(event_panel), :method => :DELETE, :confirm => "Really want to delete this Panel?", :class => "member_link delete_link")
      raw(result)
    end
  end

  show :title => :title do
    panel "Panel Details" do
      attributes_table_for event_panel do
        row :title
        row :description
        row :created_at
        row :updated_at
      end
    end
    active_admin_comments
  end

end