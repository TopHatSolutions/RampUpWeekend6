class ThisOrThatsController < ApplicationController
  before_action :set_this_or_that, only: [:show, :edit, :update, :destroy]

  # GET /this_or_thats
  # GET /this_or_thats.json
  def index
    @this_or_thats = ThisOrThat.all
  end

  # GET /this_or_thats/1
  # GET /this_or_thats/1.json
  def show
  end

  # GET /this_or_thats/new
  def new
    @this_or_that = ThisOrThat.new
  end

  # GET /this_or_thats/1/edit
  def edit
  end

  # POST /this_or_thats
  # POST /this_or_thats.json
  def create
    @this_or_that = ThisOrThat.new(this_or_that_params)

    respond_to do |format|
      if @this_or_that.save
        format.html { redirect_to @this_or_that, notice: 'This or that was successfully created.' }
        format.json { render action: 'show', status: :created, location: @this_or_that }
      else
        format.html { render action: 'new' }
        format.json { render json: @this_or_that.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /this_or_thats/1
  # PATCH/PUT /this_or_thats/1.json
  def update
    respond_to do |format|
      if @this_or_that.update(this_or_that_params)
        format.html { redirect_to @this_or_that, notice: 'This or that was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @this_or_that.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /this_or_thats/1
  # DELETE /this_or_thats/1.json
  def destroy
    @this_or_that.destroy
    respond_to do |format|
      format.html { redirect_to this_or_thats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_this_or_that
      @this_or_that = ThisOrThat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def this_or_that_params
      params.require(:this_or_that).permit(:image1, :image2, :description, :comment, :is_private, :user_id, :pants_brand, :shirt_brand, :shoes_brand, :hat_brand, :jacket_brand)
    end
end
