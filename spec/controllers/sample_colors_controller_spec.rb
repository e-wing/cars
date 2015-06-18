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

RSpec.describe SampleColorsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # SampleColor. As you add validations to SampleColor, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SampleColorsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all sample_colors as @sample_colors" do
      sample_color = SampleColor.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:sample_colors)).to eq([sample_color])
    end
  end

  describe "GET show" do
    it "assigns the requested sample_color as @sample_color" do
      sample_color = SampleColor.create! valid_attributes
      get :show, {:id => sample_color.to_param}, valid_session
      expect(assigns(:sample_color)).to eq(sample_color)
    end
  end

  describe "GET new" do
    it "assigns a new sample_color as @sample_color" do
      get :new, {}, valid_session
      expect(assigns(:sample_color)).to be_a_new(SampleColor)
    end
  end

  describe "GET edit" do
    it "assigns the requested sample_color as @sample_color" do
      sample_color = SampleColor.create! valid_attributes
      get :edit, {:id => sample_color.to_param}, valid_session
      expect(assigns(:sample_color)).to eq(sample_color)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SampleColor" do
        expect {
          post :create, {:sample_color => valid_attributes}, valid_session
        }.to change(SampleColor, :count).by(1)
      end

      it "assigns a newly created sample_color as @sample_color" do
        post :create, {:sample_color => valid_attributes}, valid_session
        expect(assigns(:sample_color)).to be_a(SampleColor)
        expect(assigns(:sample_color)).to be_persisted
      end

      it "redirects to the created sample_color" do
        post :create, {:sample_color => valid_attributes}, valid_session
        expect(response).to redirect_to(SampleColor.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sample_color as @sample_color" do
        post :create, {:sample_color => invalid_attributes}, valid_session
        expect(assigns(:sample_color)).to be_a_new(SampleColor)
      end

      it "re-renders the 'new' template" do
        post :create, {:sample_color => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested sample_color" do
        sample_color = SampleColor.create! valid_attributes
        put :update, {:id => sample_color.to_param, :sample_color => new_attributes}, valid_session
        sample_color.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested sample_color as @sample_color" do
        sample_color = SampleColor.create! valid_attributes
        put :update, {:id => sample_color.to_param, :sample_color => valid_attributes}, valid_session
        expect(assigns(:sample_color)).to eq(sample_color)
      end

      it "redirects to the sample_color" do
        sample_color = SampleColor.create! valid_attributes
        put :update, {:id => sample_color.to_param, :sample_color => valid_attributes}, valid_session
        expect(response).to redirect_to(sample_color)
      end
    end

    describe "with invalid params" do
      it "assigns the sample_color as @sample_color" do
        sample_color = SampleColor.create! valid_attributes
        put :update, {:id => sample_color.to_param, :sample_color => invalid_attributes}, valid_session
        expect(assigns(:sample_color)).to eq(sample_color)
      end

      it "re-renders the 'edit' template" do
        sample_color = SampleColor.create! valid_attributes
        put :update, {:id => sample_color.to_param, :sample_color => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sample_color" do
      sample_color = SampleColor.create! valid_attributes
      expect {
        delete :destroy, {:id => sample_color.to_param}, valid_session
      }.to change(SampleColor, :count).by(-1)
    end

    it "redirects to the sample_colors list" do
      sample_color = SampleColor.create! valid_attributes
      delete :destroy, {:id => sample_color.to_param}, valid_session
      expect(response).to redirect_to(sample_colors_url)
    end
  end

end