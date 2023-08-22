class ToolsController < ApplicationController
  before_action :set_tool, only: [:show, :edit, :update, :destroy, :add_user, :remove_user]
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
    @is_create = true
    if @tool.save
      redirect_to @tools
    else
      render :new
    end
  end

  def edit
    @is_create = false

    @unassigned_users = User.joins("LEFT JOIN tool_users ON users.id = tool_users.user_id")
                            .where("tool_users.tool_id IS NULL OR tool_users.tool_id != ?", @tool.id)
  end

  def update
    if @tool.update(tool_params)

      redirect_to tools_url , notice: "Tool was updated successfully."
    end
  end

  def destroy
    @tool.destroy
    redirect_to tools_url , notice: "Tool was deleted successfully."
  end

  def add_user
    @user = User.find(params[:user_id])
    ToolUser.create([
                      {tool_id: @tool.id, user_id: @user.id}
                    ] )
    redirect_to edit_tool_path, notice: "User was added successfully."
  end

  def remove_user
    puts 'hitting endpoint'
    @user = User.find(params[:user_id])
    toolUser = ToolUser.find_by(tool_id: @tool.id, user_id: @user.id)
    ToolUser.destroy(toolUser.id)
    redirect_to edit_tool_path, notice: "User was removed successfully."
  end

  private

  def set_tool
    @tool = Tool.find(params[:id])
    puts @tool.users.inspect
  end

  def tool_params
    params.require(:tool).permit(:name, :description)
  end
end
