class ProblemsController < ApplicationController
  def new
    @problem = Problem.new
  end
  
  def create
    @problem = Problem.new(params[:problem])
    respond_to do |format|
      if @problem.save
        format.html { redirect_to root_url }
      end
    end
  end
  
  def index
    @problems = Problem.all
  end
  
  def show
    @problem = Problem.find(params[:id])
    @solution = Solution.new
  end
  
  def edit
    @problem = Problem.find(params[:id])
  end
  
  def update
    @problem = Problem.find(params[:id])
    respond_to do |format|
      if @problem.update_attributes(params[:problem])
        format.html { redirect_to problem_path(@problem) }
      end
    end
  end
  
  def destroy
    @problem = Problem.find(params[:id])
    respond_to do |format|
      if @problem.destroy
        format.html { redirect_to problems_path }
      end
    end
  end
end
