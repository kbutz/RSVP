class EverythingsController < ApplicationController
  before_filter :authenticate_guest!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_everything, only: [:show, :edit, :update, :destroy]


  # GET /everythings
  # GET /everythings.json
  def index
    @everythings = Everything.all
  end

  # GET /everythings/1
  # GET /everythings/1.json
  def show
  end

  # GET /everythings/new
  def new
    @everything = Everything.new
  end

  # GET /everythings/1/edit
  def edit
  end

  # POST /everythings
  # POST /everythings.json
  def create
    @everything = Everything.new(everything_params)

    respond_to do |format|
      if @everything.save
        format.html { redirect_to @everything, notice: 'Everything was successfully created.' }
        format.json { render :show, status: :created, location: @everything }
      else
        format.html { render :new }
        format.json { render json: @everything.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /everythings/1
  # PATCH/PUT /everythings/1.json
  def update
    respond_to do |format|
      if @everything.update(everything_params)
        format.html { redirect_to @everything, notice: 'Everything was successfully updated.' }
        format.json { render :show, status: :ok, location: @everything }
      else
        format.html { render :edit }
        format.json { render json: @everything.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /everythings/1
  # DELETE /everythings/1.json
  def destroy
    @everything.destroy
    respond_to do |format|
      format.html { redirect_to everythings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_everything
      @everything = Everything.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def everything_params
      params.require(:everything).permit(:guest_id, :your_friends, :friday, :friday_lodging, :ceremony, :reception, :saturday_lodging, :first_name)
    end
end
