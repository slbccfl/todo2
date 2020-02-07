require 'rails_helper'

RSpec.describe TasksController, type: :controller do
    describe "GET #index" do

      it 'renders the index template' do
        get :index
      
        expect(response).to render_template(:index)
      end
      it 'returns all tasks for user' do
          user = create(:user)
       
          get :index
             
          expect(assigns(:tasks)).not_to be_nil
       end
    end
end