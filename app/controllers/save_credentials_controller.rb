class SaveCredentialsController < ApplicationController
  before_action :set_save_credential, only: [:show, :edit, :update, :destroy]

  # GET /save_credentials
  # GET /save_credentials.json
  def index
    @save_credentials = SaveCredential.all
    respond_to do |format|
      if @save_credential
        format.html { render :nothing => true }
        format.json { render json: @save_credentials}
      else
        format.html { render :nothing => true  }
        format.json { render json: {:status => "sorry"} }
      end
    end
  end

  # GET /save_credentials/1
  # GET /save_credentials/1.json
  def show
  end

  # GET /save_credentials/new
  def new
    @save_credential = SaveCredential.new
  end

  # GET /save_credentials/1/edit
  def edit
  end

  # POST /save_credentials
  # POST /save_credentials.json
  def create
    @save_credential = SaveCredential.new(save_credential_params)

    respond_to do |format|
      if @save_credential.save
        format.html { render :nothing => true}
        format.json { render json: {:status => "ok"} }
      else
        format.html { render :nothing => true }
        format.json { render json: @save_credential.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /save_credentials/1
  # PATCH/PUT /save_credentials/1.json
  def update
    respond_to do |format|
      if @save_credential.update(save_credential_params)
        format.html { redirect_to @save_credential, notice: 'Save credential was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @save_credential.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /save_credentials/1
  # DELETE /save_credentials/1.json
  def destroy
    @save_credential.destroy
    respond_to do |format|
      format.html { redirect_to save_credentials_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_save_credential
      @save_credential = SaveCredential.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def save_credential_params
      params[:save_credential]
    end
end
