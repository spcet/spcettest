class SubjectmsController < ApplicationController
  before_action :set_subjectm, only: [:show, :edit, :update, :destroy]

  # GET /subjectms
  # GET /subjectms.json
  def index
    @subjectms = Subjectm.all
  end

  # GET /subjectms/1
  # GET /subjectms/1.json
  def show
  end

  # GET /subjectms/new
  def new
    @subjectm = Subjectm.new
  end

  # GET /subjectms/1/edit
  def edit
  end

  # POST /subjectms
  # POST /subjectms.json
  def create
    @subjectm = Subjectm.new(subjectm_params)

    respond_to do |format|
      if @subjectm.save
        format.html { redirect_to @subjectm, notice: 'Subjectm was successfully created.' }
        format.json { render :show, status: :created, location: @subjectm }
      else
        format.html { render :new }
        format.json { render json: @subjectm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjectms/1
  # PATCH/PUT /subjectms/1.json
  def update
    respond_to do |format|
      if @subjectm.update(subjectm_params)
        format.html { redirect_to @subjectm, notice: 'Subjectm was successfully updated.' }
        format.json { render :show, status: :ok, location: @subjectm }
      else
        format.html { render :edit }
        format.json { render json: @subjectm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjectms/1
  # DELETE /subjectms/1.json
  def destroy
    @subjectm.destroy
    respond_to do |format|
      format.html { redirect_to subjectms_url, notice: 'Subjectm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subjectm
      @subjectm = Subjectm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subjectm_params
      params.require(:subjectm).permit(:name, :code, :staff, :credit)
    end
end
