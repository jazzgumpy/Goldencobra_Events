ActiveAdmin.register Goldencobra::Article, :as => "Article" do
  
  sidebar :event_module, :only => [:edit] do
    render "/goldencobra_events/admin/events/event_module_sidebar"
  end
  
end