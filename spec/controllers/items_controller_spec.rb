require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  before(:each) do
    @store = Store.create(name: "store")
  end

  let(:valid_attributes) {
    {
      name: "salad",
      category: "produce",
      store: @store,
      regularprice: 3,
      saleprice: 2
    }
  }

  let(:invalid_attributes) {
    {
      name: nil,
      category: nil,
      store: nil
    }
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      item = Item.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      item = Item.create! valid_attributes
      get :show, params: {id: item.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    login_user
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    login_user
    it "returns a success response" do
      item = Item.create! valid_attributes
      get :edit, params: {id: item.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    login_user
    context "with valid params" do
      skip it "creates a new Item" do
        expect {
          post :create, params: {item: valid_attributes}, session: valid_session
        }.to change(Item, :count).by(1)
      end

      skip it "redirects to the created item" do
        post :create, params: {item: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Item.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {item: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    login_user
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested item" do
        item = Item.create! valid_attributes
        put :update, params: {id: item.to_param, item: new_attributes}, session: valid_session
        item.reload
        skip("Add assertions for updated state")
      end

      skip it "redirects to the item" do
        item = Item.create! valid_attributes
        put :update, params: {id: item.to_param, item: valid_attributes}, session: valid_session
        expect(response).to redirect_to(item)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        item = Item.create! valid_attributes
        put :update, params: {id: item.to_param, item: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    login_user
    it "destroys the requested item" do
      item = Item.create! valid_attributes
      expect {
        delete :destroy, params: {id: item.to_param}, session: valid_session
      }.to change(Item, :count).by(-1)
    end

    it "redirects to the items list" do
      item = Item.create! valid_attributes
      delete :destroy, params: {id: item.to_param}, session: valid_session
      expect(response).to redirect_to(items_url)
    end
  end

end
