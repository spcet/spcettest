class CollegeController < ApplicationController
  def attendance
@semester=Semester.find(params[:id])

@list=[]
  	Student.where(batch_id:@semester.classroom.batch_id,dept_id:@semester.classroom.dept_id).each do |student|
  		puts student.name
  		@s={}
  		@s[:id]=student.id
  		@s[:regno]=student.regno
  		@s[:name]=student.name
  		@s[:attended]=false
  		@list.push(@s)
  		end

  end

  def calattend
@studentlist=params[:college][:body]
date=eval(params[:college][:head])[:date]
semester=eval(params[:college][:head])[:semester]
puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^666"
  	puts @studentlist
  	eval(@studentlist).each do |student|
  		
  		attend=Attendance.new()
  		attend.student_id=student[:id];
  		attend.semester_id=semester
  		attend.date=date
  		attend.attended=student[:attended]
  		puts attend
  		puts "\n"
  		attend.save
  	end

@AttendanceMaster=AttendanceMaster.new()
@AttendanceMaster.date=date
@AttendanceMaster.today=true;
@AttendanceMaster.semester_id=semester;
@AttendanceMaster.save

  end

def unitmark
@unit=Unit.find(params[:id])

puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
batch_id=@unit.semester.classroom.batch_id
dept_id= @unit.semester.classroom.dept_id
subjects=@unit.semester.subjects
@subject=subjects
@list=[]
  	Student.where(batch_id:batch_id,dept_id:dept_id).each do |student|
  		puts student.name
  		@s={}
  		@s[:id]=student.id
  		@s[:regno]=student.regno
  		@s[:name]=student.name
  		@s[:attended]=false
  		@s[:subjects]={}
  		subjects.each do |subject|
  		@s[:subjects][subject.id]={name:subject.name,mk:0}	
  		end
  		@list.push(@s)
  		puts @list

  		end

end

end
