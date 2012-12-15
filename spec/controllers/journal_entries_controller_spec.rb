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

describe JournalEntriesController do

  # This should return the minimal set of attributes required to create a valid
  # JournalEntry. As you add validations to JournalEntry, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # JournalEntriesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all journal_entries as @journal_entries" do
      journal_entry = JournalEntry.create! valid_attributes
      get :index, {}, valid_session
      assigns(:journal_entries).should eq([journal_entry])
    end
  end

  describe "GET show" do
    it "assigns the requested journal_entry as @journal_entry" do
      journal_entry = JournalEntry.create! valid_attributes
      get :show, {:id => journal_entry.to_param}, valid_session
      assigns(:journal_entry).should eq(journal_entry)
    end
  end

  describe "GET new" do
    it "assigns a new journal_entry as @journal_entry" do
      get :new, {}, valid_session
      assigns(:journal_entry).should be_a_new(JournalEntry)
    end
  end

  describe "GET edit" do
    it "assigns the requested journal_entry as @journal_entry" do
      journal_entry = JournalEntry.create! valid_attributes
      get :edit, {:id => journal_entry.to_param}, valid_session
      assigns(:journal_entry).should eq(journal_entry)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new JournalEntry" do
        expect {
          post :create, {:journal_entry => valid_attributes}, valid_session
        }.to change(JournalEntry, :count).by(1)
      end

      it "assigns a newly created journal_entry as @journal_entry" do
        post :create, {:journal_entry => valid_attributes}, valid_session
        assigns(:journal_entry).should be_a(JournalEntry)
        assigns(:journal_entry).should be_persisted
      end

      it "redirects to the created journal_entry" do
        post :create, {:journal_entry => valid_attributes}, valid_session
        response.should redirect_to(JournalEntry.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved journal_entry as @journal_entry" do
        # Trigger the behavior that occurs when invalid params are submitted
        JournalEntry.any_instance.stub(:save).and_return(false)
        post :create, {:journal_entry => {}}, valid_session
        assigns(:journal_entry).should be_a_new(JournalEntry)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        JournalEntry.any_instance.stub(:save).and_return(false)
        post :create, {:journal_entry => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested journal_entry" do
        journal_entry = JournalEntry.create! valid_attributes
        # Assuming there are no other journal_entries in the database, this
        # specifies that the JournalEntry created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        JournalEntry.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => journal_entry.to_param, :journal_entry => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested journal_entry as @journal_entry" do
        journal_entry = JournalEntry.create! valid_attributes
        put :update, {:id => journal_entry.to_param, :journal_entry => valid_attributes}, valid_session
        assigns(:journal_entry).should eq(journal_entry)
      end

      it "redirects to the journal_entry" do
        journal_entry = JournalEntry.create! valid_attributes
        put :update, {:id => journal_entry.to_param, :journal_entry => valid_attributes}, valid_session
        response.should redirect_to(journal_entry)
      end
    end

    describe "with invalid params" do
      it "assigns the journal_entry as @journal_entry" do
        journal_entry = JournalEntry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JournalEntry.any_instance.stub(:save).and_return(false)
        put :update, {:id => journal_entry.to_param, :journal_entry => {}}, valid_session
        assigns(:journal_entry).should eq(journal_entry)
      end

      it "re-renders the 'edit' template" do
        journal_entry = JournalEntry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JournalEntry.any_instance.stub(:save).and_return(false)
        put :update, {:id => journal_entry.to_param, :journal_entry => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested journal_entry" do
      journal_entry = JournalEntry.create! valid_attributes
      expect {
        delete :destroy, {:id => journal_entry.to_param}, valid_session
      }.to change(JournalEntry, :count).by(-1)
    end

    it "redirects to the journal_entries list" do
      journal_entry = JournalEntry.create! valid_attributes
      delete :destroy, {:id => journal_entry.to_param}, valid_session
      response.should redirect_to(journal_entries_url)
    end
  end

end
