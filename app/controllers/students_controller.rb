class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params.except(:email,:path))
 @user=User.new()
    puts  "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    puts @student
    puts "#################################"
    puts @student.name
    @user.username=@student.name
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
    @user.email=student_params[:email]
    @user.password='1234567890'
    puts @user
    puts @user.username
    @user.actor="S"
    @user.role="";
    # @user.role="{'home':        { 
    #                            'classadvisor':false,
    #                            'student':true,
    #                            'staff':false,
    #                            'hod':false,
    #                            'admin':false,
    #                            'placement':false
    #                             },
    #              'create':      {
    #                             'student':true,
    #                             'staff':false,
    #                             'admin':false,
    #                             'hod':false,
    #                             'classroom':false,
    #                             'sem':false,
    #                             'subject':false,
    #                             'assignment':false,
    #                             'subjectanalysis':'false',
    #                             'mark':false,
    #                             'note':false,
    #                             'unit':false,
    #                             'unittest':false,
    #                             'placementresult':false,
    #                             'placementquestion':false,
    #                             'placementtest':false,

    #                             },                   
    #              'attendence':  {
    #                             'add':false,
    #                             'show':true,
    #                             },
    #               'internalmarks':{
    #                             'add':false,
    #                             'show':true,

    #                               },              

    #              'notes':       {
    #                            'add':false,
    #                            'show':true,
    #                             },
    #              'news':        {
    #                            'add':false,
    #                            'show':true,  

    #                             },
    #              'events':        {
    #                            'add':false,
    #                            'show':true,  

    #                             },
    #              'results':    {
    #                            'add':false,
    #                            'show':true,  

    #                             },

    #              'assignment':  {
    #                             'add':false,
    #                             'show':true,
    #                             },
    #              'timetable':  {
    #                            'add':false,
    #                            'show':true,  

    #                             },                  
    #              'placement':       {
    #                            'add':false,
    #                            'show':true,  

    #                             }


    #             }"
    @user.path=student_params[:path] 
   @user.save
    @student.user=@user


    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:email,:path,:name, :regno, :dept_id, :batch_id, :user_id, :hoa, :sa, :hoal, :sal, :dob, :gender, :fathersname, :guardian, :community, :religionn, :tenth, :twelth, :fathersoccupiton, :identification, :blood, :dote, :mobile, :pmobile, :addr1, :addr2, :mark)
    end
end
