class Instructor::SectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_course, only: [:create]
  before_action :require_authorized_for_current_section, only: [:update]
  # def new
  #   @section = Section.new
  # end

  def create
    @section = current_course.sections.create(sectionparams)
    redirect_to instructor_course_path(current_course)
  end

  def update
    puts sectionparams
    current_section.update_attributes(sectionparams)
    render plain: "Updated"
  end

  private
  
  helper_method :current_course 
  def current_course
    @current_course ||= Course.find(params[:course_id])
  end

  def current_section
    @current_section ||= Section.find(params[:id])
  end

  def require_authorized_for_current_course
    if current_course.user != current_user
      render plain: 'Unauthorized', status: :unauthorized 
    end 
  end

  def require_authorized_for_current_section
    if current_section.course.user != current_user
      render plain: 'Unauthorized', status: :unauthorized 
    end 
  end

  def sectionparams
    params.require(:section).permit(:title, :row_order_position)
  end

end
