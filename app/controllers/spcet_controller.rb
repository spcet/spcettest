class SpcetController < ApplicationController
  def attendance
@semester=Semester.find(params[:id])
@students=Student.where(batch_id:@semester.classroom.batch_id,dept_id:@semester.classroom.dept_id)
puts @semester
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55"

puts @students
  end

  def calattend
@studentlist=eval(params[:spcet][:body])
  	puts "##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  	puts @studentlist


  end
end
