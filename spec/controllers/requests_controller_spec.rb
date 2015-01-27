require 'rails_helper'

describe RequestsController, :type => :controller do

  describe 'GET #index' do
    let(:user){ create(:user) }

    before do
      sign_in
      get :index
    end

    it 'renders the INDEX template' do
      expect(response).to render_template('index')
    end
  end

  describe 'GET #new' do

    before do
      sign_in
      get :new
    end

    it 'renders the NEW template' do
      expect(response).to render_template('new')
    end

    it 'assigns a new request'do
      expect(assigns(:request)).to be_an_instance_of(Request)
    end
  end

  describe 'POST #create'do

    before do
      sign_in
      post :create, request: attributes_for(:request)
    end

    it 'assigns the new request object' do
      expect(assigns(:request)).to be_an_instance_of(Request)
    end

    it 'saves the request' do
      expect{
        post :create, request: attributes_for(:request)
      }.to change{ Request.count }.by(1)
    end

    it 'redirects to the users index page' do
      expect(response).to redirect_to users_path
    end
  end

  describe 'GET #edit' do

    let(:request){ create(:request) }

    before do
      sign_in
      get :edit, id: request.id
    end

    it 'renders the EDIT template' do
      expect(response).to render_template('edit')
    end

    it 'assigns the request'do
      expect(assigns(:request)).to eq(request)
    end
  end

  describe 'PUT #update' do

    let(:request){ create(:request) }

    before do
      sign_in
      put :update, id: request.id, request: attributes_for(:request)
    end

    it 'assigns the request' do
      expect(assigns(:request)).to eq(request)
    end

    it 'updates the request attributes' do
      attributes = user.attributes
      expect(assigns[:request].attributes).to_not eq(attributes)
    end

    it 'redirects to the users index page' do
      expect(response).to redirect_to users_path
    end
  end

  describe 'GET #show' do
    let(:request){ create(:request) }

    before do
      sign_in
      get :show, id: request.id
    end

    it 'assigns the request' do
      expect(assigns(:request)).to eq(request)
    end

    it 'renders the show template' do
      expect(response).to render_template('show')
    end
  end

  describe 'POST #destroy' do

    let!(:request){ create(:request) }

    it 'assigns the request' do
      delete :destroy, id: request.id
      expect(assigns(:request)).to eq(request)
    end

    it 'deletes the request' do
      expect{ delete :destroy, id: request.id }.to change( Request, :count ).by(-1)
    end
  end
end
