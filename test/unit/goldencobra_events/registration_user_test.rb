# == Schema Information
#
# Table name: goldencobra_events_registration_users
#
#  id                     :integer(4)      not null, primary key
#  user_id                :integer(4)
#  gender                 :boolean(1)
#  email                  :string(255)
#  title                  :string(255)
#  firstname              :string(255)
#  lastname               :string(255)
#  function               :string(255)
#  phone                  :string(255)
#  agb                    :boolean(1)
#  company_id             :integer(4)
#  created_at             :datetime        not null
#  updated_at             :datetime        not null
#  type_of_registration   :string(255)     default("Webseite")
#  comment                :text
#  invoice_sent           :datetime
#  payed_on               :datetime
#  first_reminder_sent    :datetime
#  second_reminder_sent   :datetime
#  active                 :boolean(1)      default(TRUE)
#  billing_gender         :boolean(1)
#  billing_title          :string(255)
#  billing_firstname      :string(255)
#  billing_lastname       :string(255)
#  billing_function       :string(255)
#  billing_phone          :string(255)
#  billing_company_id     :integer(4)
#  billing_contact_person :string(255)
#  billing_department     :string(255)
#

require 'test_helper'

module GoldencobraEvents
  class RegistrationUserTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end

