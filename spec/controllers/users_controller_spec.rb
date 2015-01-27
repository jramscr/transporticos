require 'rails_helper'

describe UsersController, :type => :controller do

  describe 'GET #Index' do
    before do
      sign_in
      get :index
    end

    it 'renders the INDEX template' do
      expect(response).to render_template('index')
    end
  end

  describe 'GET #show' do

    let(:user){ create(:user) }

    before do
      sign_in
      get :show, id: user.id
    end

    it 'assigns the user' do
      expect(assigns(:user)).to eq(user)
    end

    it 'renders the SHOW template' do
      expect(response).to render_template('show')
    end
  end

  describe 'GET #edit' do

    let(:user){ create(:user) }

    before do
      sign_in
      get :edit, id: user.id
    end

    it 'renders the EDIT template' do
      expect(response).to render_template('edit')
    end

    it 'assigns the user' do
      expect(assigns(:user)).to eq(user)
    end
  end

  describe 'PUT #update' do
    let(:user){ create(:user) }

    before do
      sign_in
      put :update, id: user.id, user: attributes_for(:user)
    end

    it 'assigns the user' do
      expect(assigns(:user)).to eq(user)
    end

    it 'updates the user attributes' do
      attributes = user.attributes
      expect(assigns[:user].attributes).to_not eq(attributes)
    end

    it 'redirects to the show template' do
      expect(response).to redirect_to user_path(user.id)
    end
  end
end
