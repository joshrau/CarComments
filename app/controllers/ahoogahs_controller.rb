class AhoogahsController < ApplicationController
  before_action :set_ahoogah, only: [:show, :edit, :update, :destroy]

  # GET /ahoogahs
  # GET /ahoogahs.json
  def index
    @ahoogahs = Ahoogah.all
  end

  # GET /ahoogahs/1
  # GET /ahoogahs/1.json
  def show
  end

  # GET /ahoogahs/new
  def new
    @ahoogah = Ahoogah.new
  end

  # GET /ahoogahs/1/edit
  def edit
  end

  # POST /ahoogahs
  # POST /ahoogahs.json
  def create
    @ahoogah = Ahoogah.new(ahoogah_params)

    respond_to do |format|
      if @ahoogah.save
        format.html { redirect_to @ahoogah, notice: 'Ahoogah was successfully created.' }
        format.json { render :show, status: :created, location: @ahoogah }
      else
        format.html { render :new }
        format.json { render json: @ahoogah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ahoogahs/1
  # PATCH/PUT /ahoogahs/1.json
  def update
    respond_to do |format|
      if @ahoogah.update(ahoogah_params)
        format.html { redirect_to @ahoogah, notice: 'Ahoogah was successfully updated.' }
        format.json { render :show, status: :ok, location: @ahoogah }
      else
        format.html { render :edit }
        format.json { render json: @ahoogah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ahoogahs/1
  # DELETE /ahoogahs/1.json
  def destroy
    @ahoogah.destroy
    respond_to do |format|
      format.html { redirect_to ahoogahs_url, notice: 'Ahoogah was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ahoogah
      @ahoogah = Ahoogah.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ahoogah_params
      params.require(:ahoogah).permit(:License, :State, :Comment, :Tag1, :Tag2, :Tag3)
    end
end
