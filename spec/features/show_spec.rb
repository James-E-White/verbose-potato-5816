require 'rails_helper'

# Story 1
# As a visitor, 
# When I visit a customer show page,
# I see the customer's name,
# And I see its a list of its items
# including the item's name, price, and the name of the supermarket that it belongs to.

RSpec.describe "Customer show" do 
    before (:each) do 
    @customer1 = Customer.create!(name: "Jack")
    @customer2 = Customer.create!(name: "Sally")
    @customer3 = Customer.create!(name: "Deb")

    @supermarket1 = Supermarket.create!(name: "Alberston's", location: "500 Wall St")
    @supermarket2 = Supermarket.create!(name: "Safeway", location: "800 Fall St")

    @item1 = @supermarket1.items.create!(name: "Ajax", price: 5)
    @item2 = @supermarket1.items.create!(name: "Dawn", price: 2)
    @item3 = @supermarket1.items.create!(name: "Eggs", price: 3)
    @item4 = @supermarket1.items.create!(name: "Tide", price: 4)
    @item5 = @supermarket2.items.create!(name: "Jello", price: 6)
    @item6 = @supermarket2.items.create!(name: "Butter", price: 9)
    
   

    @supermarket1.customers << @customer1
    #@customer1.items << @item1
    

    end
    describe 'as a visitor when I visit the customer show page I see the name and lists of items with price and the supermarket it belongs to' do 
      it 'shows the customers information' do 
      visit "/customers/#{@customer1.id}"   
     
      within '#customer-#{@customer1.id}' do 
      expect(page).to have_content("Ajax")
      end 
    end
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
