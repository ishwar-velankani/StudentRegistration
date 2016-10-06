class StudentsController < ApplicationController
	def new
		@student = Student.new
	end
	def create
		#this cod eis used for checking
		#render plain: params[:student].inspect

		#@student = Student.new(params[:student])
		@student =  Student.new(student_params)
		if @student.save
			redirect_to @student
		else
			render 'new'
		end
	end

	def show
		@student = Student.find(params[:id])
	end
	def index
		@students = Student.all
	end

	def edit
  		@student = Student.find(params[:id])
	end

	def update
  		@student = Student.find(params[:id])
 
  		if @student.update(student_params)
    		redirect_to @student
  		else
    		render 'edit'
  		end
	end

	private
		def student_params
			params.require(:student).permit(:name,:bloodgroup,:department)
		end
end
