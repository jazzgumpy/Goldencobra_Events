# GoldencobraEvents

## Installation

    cd test/dummy  
    (in goldencobra_events/test/dummy/) rake goldencobra:install:migrations
    (in goldencobra_events/test/dummy/) rake db:migrate
    cd ../..    
    (in goldencobra_events/) rake db:migrate
    cd test/dummy
    (in goldencobra_events/test/dummy) rake db:test:prepare


## Setup

    <head>
      <%= display_meta_tags %>
      <%= stylesheet_link_tag    "goldencobra/application", :media => "all" %>
      <%= stylesheet_link_tag    "goldencobra_events/application", :media => "all" %>
      <%= stylesheet_link_tag    "application", :media => "all" %>
      <%= javascript_include_tag "goldencobra/application" %>
      <%= javascript_include_tag "goldencobra_events/application" %>
      <%= javascript_include_tag "application" %>	
      <%= csrf_meta_tags %>
    </head>
	
	
	Remove:  

    //= require jquery
    //= require jquery_ujs
  
  from your assets/application.js


## Usage

	event_agb_popup(:title => "Unsere AGBs anzeigen")

	render_article_events({})
		:depth => 0,1,2,3
		:class => "basdf"
		:agb_title => "Unsere AGBs anzeigen"
		
		
	render_registration_basket({})
		
