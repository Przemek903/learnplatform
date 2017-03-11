class CoursesController < ApplicationController
  load_and_authorize_resource :course

  def index

  end


  def create
    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course has been created' }
        format.json { render json: @course, status: :created }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    update_params = course_params
    respond_to do |format|
      if @course.update(update_params)
        format.html { redirect_to @course, notice: 'Course has been updated' }
        format.json { render json: @course, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Course successfuly removed' }
      format.json { head :no_content }
    end
  end

  private

    def course_params
      params.require(:course).permit(:name, :description, :estimated_time, :domain_id, :level, :image)
    end
end
