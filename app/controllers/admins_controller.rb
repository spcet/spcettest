class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  # GET /admins
  # GET /admins.json
  def index
    @admins = Admin.all
  end

  # GET /admins/1
  # GET /admins/1.json
  def show
  end

  # GET /admins/new
  def new
    @admin = Admin.new
  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins
  # POST /admins.json
  def create
    puts admin_params
    @admin = Admin.new(admin_params.except(:email,:path))


  @user=User.new()
  puts @user
    puts  "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    puts "#################################"
    @user.username=@admin.name
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
    @user.email=admin_params[:email]
    @user.password='1234567890'
    @user.actor='A'
    @user.role='';   
    # @user.role="{'home':        { 
    #                            'classadvisor':true,
    #                            'student':true,
    #                            'staff':true,
    #                            'hod':true,
    #                            'admin':true,
    #                            'placement':true
    #                             },
    #              'create':      {
    #                             'student':true,
    #                             'staff':true,
    #                             'admin':true,
    #                             'hod':true,
    #                             'classroom':true,
    #                             'sem':true,
    #                             'subject':'true',
    #                             'assignment':true,
    #                             'subjectanalysis':'true',
    #                             'mark':true,
    #                             'note':true,
    #                             'unit':true,
    #                             'unittest':true,
    #                             'placementresult':true,
    #                             'placementquestion':true,
    #                             'placementtest':true,




    #                             },                   
    #              'attendence':  {
    #                             'add':true,
    #                             'show':true,
    #                             },
    #               'internalmarks':{
    #                             'add':true,
    #                             'show':true,

    #                               },              

    #              'notes':       {
    #                            'add':true,
    #                            'show':true
    #                             },
    #              'news':        {
    #                            'add':true,
    #                            'show':true  

    #                             },
    #              'events':        {
    #                            'add':true,
    #                            'show':true  

    #                             },
    #              'results':    {
    #                            'add':true,
    #                            'show':true  

    #                             },

    #              'assignment':  {
    #                             'add':true,
    #                             'show':true
    #                             },
    #              'timetable':  {
    #                            'add':true,
    #                            'show':true  

    #                             },                  
    #              'placement':       {
    #                            'add':true,
    #                            'show':true  

    #                             }


    #             }"
    @user.path=admin_params[:path]
    @user.save
    puts @user
    @admin.user=@user
    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:name, :user_id,:email,:path)
    end
end
