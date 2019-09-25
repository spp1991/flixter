class Instructor::LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_section, only: [:create]
  before_action :require_authorized_for_current_lesson, only: [:update]

  def create
    @lesson = current_section.lessons.create(lessonparams)
    redirect_to instructor_course_path(current_section.course)
  end

  def update
    current_lesson.update_attributes(lessonparams)
    render plain: "Updated"
  end

  private

  def require_authorized_for_current_section
    if current_section.course.user != current_user
      return render plain: 'Unauthorized', status: :unauthrized 
    end
  end

  def lessonparams
    params.require(:lesson).permit(:title,:subtitle, :video, :row_order_position)
  end

  helper_method :current_section, :current_lesson 
  def current_section
    @current_section ||= Section.find(params[:section_id])
  end

  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

  def require_authorized_for_current_lesson
    if current_lesson.section.course.user != current_user
      render plain: "Unauthorized", status: :unauthrized
    end
  end
end
