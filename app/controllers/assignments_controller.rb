class AssignmentsController < ApplicationController
  before_action :set_assignment, only: %i[ show update destroy ]

  # GET /assignments
  def index
    if (params[:teacher_id])
    
      teacher = Teacher.find(params[:teacher_id])
       assignments = teacher.assignments
       render json: assignments
   else
   
     render json: {error: "Invalid teacher id provided"}, status: :not_found
   end
  end

  # GET /assignments/1
  def show
    render json: @assignment
  end

  # POST /assignments
  def create
    @assignment = Assignment.new(assignment_params)

    if @assignment.save
      render json: @assignment, status: :created, location: @assignment
    else
      render json: @assignment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assignments/1
  def update
    if @assignment.update(assignment_params)
      render json: @assignment
    else
      render json: @assignment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assignments/1
  def destroy
    @assignment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assignment_params
      params.require(:assignment).permit(:title, :description, :grade, :due_date, :assigned_date, :teacher_id, :student_id)
    end
end
