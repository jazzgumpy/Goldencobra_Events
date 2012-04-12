# == Schema Information
#
# Table name: goldencobra_events_registration_users
#
#  id         :integer(4)      not null, primary key
#  user_id    :integer(4)
#  gender     :boolean(1)
#  email      :string(255)
#  title      :string(255)
#  firstname  :string(255)
#  lastname   :string(255)
#  function   :string(255)
#  phone      :string(255)
#  agb        :boolean(1)
#  company_id :integer(4)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

module GoldencobraEvents
  class RegistrationUser < ActiveRecord::Base
    has_many :event_registrations, class_name: GoldencobraEvents::EventRegistration, :foreign_key => "user_id"
    belongs_to :company, :class_name => GoldencobraEvents::Company
    belongs_to :user, :class_name => User
    
    RegistrationTypes = ["Webseite", "Fax", "Email", "Telefon", "Brieftaube", "anderer Weg"]
    
    accepts_nested_attributes_for :company
    accepts_nested_attributes_for :event_registrations, :allow_destroy => true
    
    
    def total_price
      total_price = 0
      self.event_registrations.each do |e|
        total_price += e.event_pricegroup.price if e.event_pricegroup && e.event_pricegroup.price
      end
      return total_price
    end
    
  end
end
