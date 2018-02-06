class AttendancesController < ApplicationController

	def new
	end

	def create
		@user = User.find_by(id: session[:user_id])
		@concert = Concert.find_by(id: params[:info][:concert_id])
		@attendance = Attendance.create(user_id: @user.id, concert_id: @concert.id)
  		render json: {first_name: @user.first_name, last_name: @user.last_name}
	end

end