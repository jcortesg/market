require 'spec_helper'

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

describe ArticulosController do

  # This should return the minimal set of attributes required to create a valid
  # Articulo. As you add validations to Articulo, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ArticulosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all articulos as @articulos" do
      articulo = Articulo.create! valid_attributes
      get :index, {}, valid_session
      assigns(:articulos).should eq([articulo])
    end
  end

  describe "GET show" do
    it "assigns the requested articulo as @articulo" do
      articulo = Articulo.create! valid_attributes
      get :show, {:id => articulo.to_param}, valid_session
      assigns(:articulo).should eq(articulo)
    end
  end

  describe "GET new" do
    it "assigns a new articulo as @articulo" do
      get :new, {}, valid_session
      assigns(:articulo).should be_a_new(Articulo)
    end
  end

  describe "GET edit" do
    it "assigns the requested articulo as @articulo" do
      articulo = Articulo.create! valid_attributes
      get :edit, {:id => articulo.to_param}, valid_session
      assigns(:articulo).should eq(articulo)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Articulo" do
        expect {
          post :create, {:articulo => valid_attributes}, valid_session
        }.to change(Articulo, :count).by(1)
      end

      it "assigns a newly created articulo as @articulo" do
        post :create, {:articulo => valid_attributes}, valid_session
        assigns(:articulo).should be_a(Articulo)
        assigns(:articulo).should be_persisted
      end

      it "redirects to the created articulo" do
        post :create, {:articulo => valid_attributes}, valid_session
        response.should redirect_to(Articulo.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved articulo as @articulo" do
        # Trigger the behavior that occurs when invalid params are submitted
        Articulo.any_instance.stub(:save).and_return(false)
        post :create, {:articulo => {}}, valid_session
        assigns(:articulo).should be_a_new(Articulo)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Articulo.any_instance.stub(:save).and_return(false)
        post :create, {:articulo => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested articulo" do
        articulo = Articulo.create! valid_attributes
        # Assuming there are no other articulos in the database, this
        # specifies that the Articulo created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Articulo.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => articulo.to_param, :articulo => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested articulo as @articulo" do
        articulo = Articulo.create! valid_attributes
        put :update, {:id => articulo.to_param, :articulo => valid_attributes}, valid_session
        assigns(:articulo).should eq(articulo)
      end

      it "redirects to the articulo" do
        articulo = Articulo.create! valid_attributes
        put :update, {:id => articulo.to_param, :articulo => valid_attributes}, valid_session
        response.should redirect_to(articulo)
      end
    end

    describe "with invalid params" do
      it "assigns the articulo as @articulo" do
        articulo = Articulo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Articulo.any_instance.stub(:save).and_return(false)
        put :update, {:id => articulo.to_param, :articulo => {}}, valid_session
        assigns(:articulo).should eq(articulo)
      end

      it "re-renders the 'edit' template" do
        articulo = Articulo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Articulo.any_instance.stub(:save).and_return(false)
        put :update, {:id => articulo.to_param, :articulo => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested articulo" do
      articulo = Articulo.create! valid_attributes
      expect {
        delete :destroy, {:id => articulo.to_param}, valid_session
      }.to change(Articulo, :count).by(-1)
    end

    it "redirects to the articulos list" do
      articulo = Articulo.create! valid_attributes
      delete :destroy, {:id => articulo.to_param}, valid_session
      response.should redirect_to(articulos_url)
    end
  end

end
