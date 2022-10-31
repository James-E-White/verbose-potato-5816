require 'rails_helper'

# Story 1
# As a visitor, 
# When I visit a customer show page,
# I see the customer's name,
# And I see its a list of its items
# including the item's name, price, and the name of the supermarket that it belongs to.

RSpec.describe "Customer show" do 
    describe 'as a visitor when I visti the customer show page I see the name and lists of items with price and the supermarket it belongs to' do 
      it 'shows the customers information' do 

      end
    end




#Story 2

# As a visitor,
# When I visit a customer's show page,
# Then I see a form to add an item to this customer.
# When I fill in a field with the id of an existing item,
# And I click submit,
# Then I am redirected back to the customer's show page, 
# And I see the item now listed under this customer's items.
# (You do not have to test for a sad path, for example if the ID submitted is not an existing item)
end