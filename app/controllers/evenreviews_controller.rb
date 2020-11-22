class EvenreviewsController < ApplicationController
  before_action :set_evenreview, only: [:show, :edit, :update, :destroy]

  # GET /evenreviews
  # GET /evenreviews.json
  def index
    @evenreviews = Evenreview.all
  end

  # GET /evenreviews/1
  # GET /evenreviews/1.json
  def show
  end

  # GET /evenreviews/new
  def new
    @evenreview = Evenreview.new
  end

  # GET /evenreviews/1/edit
  def edit
  end

  # POST /evenreviews
  # POST /evenreviews.json
  def create
    @evenreview = Evenreview.new(evenreview_params)

    respond_to do |format|
      if @evenreview.save
        format.html { redirect_to @evenreview, notice: 'Evenreview was successfully created.' }
        format.json { render :show, status: :created, location: @evenreview }
      else
        format.html { render :new }
        format.json { render json: @evenreview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evenreviews/1
  # PATCH/PUT /evenreviews/1.json
  def update
    respond_to do |format|
      if @evenreview.update(evenreview_params)
        format.html { redirect_to @evenreview, notice: 'Evenreview was successfully updated.' }
        format.json { render :show, status: :ok, location: @evenreview }
      else
        format.html { render :edit }
        format.json { render json: @evenreview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evenreviews/1
  # DELETE /evenreviews/1.json
  def destroy
    @evenreview.destroy
    respond_to do |format|
      format.html { redirect_to evenreviews_url, notice: 'Evenreview was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evenreview
      @evenreview = Evenreview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evenreview_params
      params.require(:evenreview).permit(:event_id, :user_id, :user_type, :scores, :comments)
    end
end
