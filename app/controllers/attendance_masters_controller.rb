class AttendanceMastersController < ApplicationController
  before_action :set_attendance_master, only: [:show, :edit, :update, :destroy]

  # GET /attendance_masters
  # GET /attendance_masters.json
  def index
    @attendance_masters = AttendanceMaster.all
  end

  # GET /attendance_masters/1
  # GET /attendance_masters/1.json
  def show
  end

  # GET /attendance_masters/new
  def new
    @attendance_master = AttendanceMaster.new
  end

  # GET /attendance_masters/1/edit
  def edit
  end

  # POST /attendance_masters
  # POST /attendance_masters.json
  def create
    @attendance_master = AttendanceMaster.new(attendance_master_params)

    respond_to do |format|
      if @attendance_master.save
        format.html { redirect_to @attendance_master, notice: 'Attendance master was successfully created.' }
        format.json { render :show, status: :created, location: @attendance_master }
      else
        format.html { render :new }
        format.json { render json: @attendance_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendance_masters/1
  # PATCH/PUT /attendance_masters/1.json
  def update
    respond_to do |format|
      if @attendance_master.update(attendance_master_params)
        format.html { redirect_to @attendance_master, notice: 'Attendance master was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendance_master }
      else
        format.html { render :edit }
        format.json { render json: @attendance_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendance_masters/1
  # DELETE /attendance_masters/1.json
  def destroy
    @attendance_master.destroy
    respond_to do |format|
      format.html { redirect_to attendance_masters_url, notice: 'Attendance master was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance_master
      @attendance_master = AttendanceMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendance_master_params
      params.require(:attendance_master).permit(:semester_id, :date, :today, :subject, :total)
    end
end
