class UnitmarksController < ApplicationController
  before_action :set_unitmark, only: [:show, :edit, :update, :destroy]

  # GET /unitmarks
  # GET /unitmarks.json
  def index
    @unitmarks = Unitmark.all
  end

  # GET /unitmarks/1
  # GET /unitmarks/1.json
  def show
  end

  # GET /unitmarks/new
  def new
    @unitmark = Unitmark.new
  end

  # GET /unitmarks/1/edit
  def edit
  end

  # POST /unitmarks
  # POST /unitmarks.json
  def create
    @unitmark = Unitmark.new(unitmark_params)

    respond_to do |format|
      if @unitmark.save
        format.html { redirect_to @unitmark, notice: 'Unitmark was successfully created.' }
        format.json { render :show, status: :created, location: @unitmark }
      else
        format.html { render :new }
        format.json { render json: @unitmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unitmarks/1
  # PATCH/PUT /unitmarks/1.json
  def update
    respond_to do |format|
      if @unitmark.update(unitmark_params)
        format.html { redirect_to @unitmark, notice: 'Unitmark was successfully updated.' }
        format.json { render :show, status: :ok, location: @unitmark }
      else
        format.html { render :edit }
        format.json { render json: @unitmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unitmarks/1
  # DELETE /unitmarks/1.json
  def destroy
    @unitmark.destroy
    respond_to do |format|
      format.html { redirect_to unitmarks_url, notice: 'Unitmark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unitmark
      @unitmark = Unitmark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unitmark_params
      params.require(:unitmark).permit(:student_id, :subject_id, :unit_id, :mark)
    end
end
