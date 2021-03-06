require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe CarModelsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # CarModel. As you add validations to CarModel, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CarModelsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all car_models as @car_models" do
      car_model = CarModel.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:car_models)).to eq([car_model])
    end
  end

  describe "GET show" do
    it "assigns the requested car_model as @car_model" do
      car_model = CarModel.create! valid_attributes
      get :show, {:id => car_model.to_param}, valid_session
      expect(assigns(:car_model)).to eq(car_model)
    end
  end

  describe "GET new" do
    it "assigns a new car_model as @car_model" do
      get :new, {}, valid_session
      expect(assigns(:car_model)).to be_a_new(CarModel)
    end
  end

  describe "GET edit" do
    it "assigns the requested car_model as @car_model" do
      car_model = CarModel.create! valid_attributes
      get :edit, {:id => car_model.to_param}, valid_session
      expect(assigns(:car_model)).to eq(car_model)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CarModel" do
        expect {
          post :create, {:car_model => valid_attributes}, valid_session
        }.to change(CarModel, :count).by(1)
      end

      it "assigns a newly created car_model as @car_model" do
        post :create, {:car_model => valid_attributes}, valid_session
        expect(assigns(:car_model)).to be_a(CarModel)
        expect(assigns(:car_model)).to be_persisted
      end

      it "redirects to the created car_model" do
        post :create, {:car_model => valid_attributes}, valid_session
        expect(response).to redirect_to(CarModel.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved car_model as @car_model" do
        post :create, {:car_model => invalid_attributes}, valid_session
        expect(assigns(:car_model)).to be_a_new(CarModel)
      end

      it "re-renders the 'new' template" do
        post :create, {:car_model => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested car_model" do
        car_model = CarModel.create! valid_attributes
        put :update, {:id => car_model.to_param, :car_model => new_attributes}, valid_session
        car_model.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested car_model as @car_model" do
        car_model = CarModel.create! valid_attributes
        put :update, {:id => car_model.to_param, :car_model => valid_attributes}, valid_session
        expect(assigns(:car_model)).to eq(car_model)
      end

      it "redirects to the car_model" do
        car_model = CarModel.create! valid_attributes
        put :update, {:id => car_model.to_param, :car_model => valid_attributes}, valid_session
        expect(response).to redirect_to(car_model)
      end
    end

    describe "with invalid params" do
      it "assigns the car_model as @car_model" do
        car_model = CarModel.create! valid_attributes
        put :update, {:id => car_model.to_param, :car_model => invalid_attributes}, valid_session
        expect(assigns(:car_model)).to eq(car_model)
      end

      it "re-renders the 'edit' template" do
        car_model = CarModel.create! valid_attributes
        put :update, {:id => car_model.to_param, :car_model => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested car_model" do
      car_model = CarModel.create! valid_attributes
      expect {
        delete :destroy, {:id => car_model.to_param}, valid_session
      }.to change(CarModel, :count).by(-1)
    end

    it "redirects to the car_models list" do
      car_model = CarModel.create! valid_attributes
      delete :destroy, {:id => car_model.to_param}, valid_session
      expect(response).to redirect_to(car_models_url)
    end
  end

end
