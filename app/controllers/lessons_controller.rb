class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show my_lesson]

  def index
    if params[:query].present?
      @lessons = policy_scope(Lesson)
                .search_by_name_description_and_genre(params[:query])
                .paginate(page: params[:page], per_page: 6)
    else
      @lessons = policy_scope(Lesson).paginate(page: params[:page], per_page: 6)
    end
  end

  def my_lessons
    @lessons = policy_scope(Lesson).where(user: current_user)
    authorize @lessons
  end

  def show
    @booking = Booking.new
    authorize @lesson
  end

  def new
    @lesson = Lesson.new
    authorize @lesson
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    authorize @lesson
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    authorize @lesson
  end

  def update
    authorize @lesson
    if @lesson.update(lesson_params)
      redirect_to lesson_path(@lesson)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @lesson
    @lesson.destroy
    redirect_to profile_path, status: :see_other
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:name, :address, :cuisine_genre, :description, :capacity, :fee, :lesson_length_minutes, :photo)
  end
end
