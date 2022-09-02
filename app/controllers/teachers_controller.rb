class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[ show update destroy ]

rescue_from ActiveRecord::RecordNotFound with: :render_not_found_response

  # GET /teachers
  def index
    @teachers = Teacher.all

    render json: @teachers
  end

  # GET /teachers/1
  def show
    render json: @teacher
  end

  # POST /teachers
  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      render json: @teacher, status: :created, location: @teacher
    else
      render json: @teacher.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teachers/1
  def update
    if @teacher.update(teacher_params)
      render json: @teacher
    else
      render json: @teacher.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teachers/1
  def destroy
    @teacher.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find_by(id: session[:teacher_id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_params
      params.require(:teacher).permit(:email, :password_digest, :first_name, :last_name)
    end

    def render_not_found_response
      render json: {error: "Teacher Not Found"}, status: :not_found

    end
end