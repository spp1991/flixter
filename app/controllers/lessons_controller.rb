class LessonsController < ApplicationController

  before_action :authenticate_user!
  before_action :check_authorization  

  def show

  end

  private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

  def check_authorization
    if !current_user.enrolled_in?(current_lesson.section.course)
      redirect_to course_path(current_lesson.section.course), alert: 'You have to Enroll to access lesson associated with course'
    end  
  end

end
