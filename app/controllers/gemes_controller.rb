class GemesController < ApplicationController
  before_action :set_geme, only: [:show, :edit, :update, :destroy]

  # GET /gemes
  # GET /gemes.json
  def index
    @gemes = Geme.all
  end

  # GET /gemes/1
  # GET /gemes/1.json
  def show
  end

  # GET /gemes/new
  def new
    @geme = Geme.new
  end

  # GET /gemes/1/edit
  def edit
  end

  # POST /gemes
  # POST /gemes.json
  def create
    @geme = Geme.new(geme_params)

    respond_to do |format|
      if @geme.save
        format.html { redirect_to @geme, notice: 'Geme was successfully created.' }
        format.json { render :show, status: :created, location: @geme }
      else
        format.html { render :new }
        format.json { render json: @geme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gemes/1
  # PATCH/PUT /gemes/1.json
  def update
    respond_to do |format|
      if @geme.update(geme_params)
        format.html { redirect_to @geme, notice: 'Geme was successfully updated.' }
        format.json { render :show, status: :ok, location: @geme }
      else
        format.html { render :edit }
        format.json { render json: @geme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gemes/1
  # DELETE /gemes/1.json
  def destroy
    @geme.destroy
    respond_to do |format|
      format.html { redirect_to gemes_url, notice: 'Geme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geme
      @geme = Geme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geme_params
      params.require(:geme).permit(:nom, :description, :url)
    end
end
