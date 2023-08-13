class ToolsController < ApplicationController
  before_action :set_tool, only: [:show, :edit, :update, :destroy]
  def index
    @tools = Tool.all
  end

  def show
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)

    if @tool.save
      redirect_to_tools_path, notice = "Tool was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tool.update(tool_params)
      redirect_to_tools_path, notice = "Tool was updated created."
    end
  end

  def destroy
    @quote.destroy
    redirect_to_tools_path, notice = "Quote was successfully destroyed."
  end
  private

  def set_tool
    @tool = Tool.find(params[:id])
  end

  def tool_params
    params.require(:tool).permit(:name, :description)
  end
end
