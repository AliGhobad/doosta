class AcceptedsController < ApplicationController
  before_action :set_accepted, only: [:show, :edit, :update, :destroy]

  # GET /accepteds
  # GET /accepteds.json
  def index
    @accepteds = Accepted.all
  end

  # GET /accepteds/1
  # GET /accepteds/1.json
  def show
  end

  # GET /accepteds/new
  def new
    @accepted = Accepted.new
  end

  # GET /accepteds/1/edit
  def edit
  end

  # POST /accepteds
  # POST /accepteds.json
  def create
    @accepted = Accepted.new(accepted_params)

    respond_to do |format|
      if @accepted.save
        format.html { redirect_to @accepted, notice: 'Accepted was successfully created.' }
        format.json { render :show, status: :created, location: @accepted }
      else
        format.html { render :new }
        format.json { render json: @accepted.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accepteds/1
  # PATCH/PUT /accepteds/1.json
  def update
    respond_to do |format|
      if @accepted.update(accepted_params)
        format.html { redirect_to @accepted, notice: 'Accepted was successfully updated.' }
        format.json { render :show, status: :ok, location: @accepted }
      else
        format.html { render :edit }
        format.json { render json: @accepted.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accepteds/1
  # DELETE /accepteds/1.json
  def destroy
    @accepted.destroy
    respond_to do |format|
      format.html { redirect_to accepteds_url, notice: 'Accepted was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accepted
      @accepted = Accepted.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accepted_params
      params.require(:accepted).permit(:event_id, :user_id, :user_type)
    end
end
