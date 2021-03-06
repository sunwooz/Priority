class SolutionsController < ApplicationController
  def create
    @problem = Problem.find(params[:problem_id])
    @solution = @problem.solutions.build(params[:solution])
    respond_to do |format|
      if @solution.save
        format.html { redirect_to @problem }
      end
    end
  end
  
  def show
    @problem = Problem.find(params[:problem_id])
    @solution = @problem.solutions.build
  end
  
  def new
    @solution = Solution.new
  end
  
  def destroy
    @problem = Problem.find(params[:id])
    @solution = @problem.solutions.find(params[:problem_id])
    respond_to do |format|
      if @solution.destroy
        format.html { redirect_to @problem }
      end
    end
  end
  
  def edit
    @solution = Solution.find(params[:id])
    @problem = Problem.find(params[:problem_id])
  end
  
  def update
    @problem = Problem.find(params[:problem_id])
    @solution = Solution.find(params[:id])
    respond_to do |format|
      if @solution.update_attributes(params[:solution])
        format.html { redirect_to @problem }
      end
    end
  end
end
