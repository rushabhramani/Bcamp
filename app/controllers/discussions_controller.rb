class DiscussionsController < ApplicationController
  before_action :set_discussion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @discussions = Discussion.all
    respond_with(@discussions)
  end

  def show
    respond_with(@discussion)
  end

  def new
    @discussion = Discussion.new
    respond_with(@discussion)
  end

  def edit
  end

  def create
    @discussion = Discussion.new(discussion_params)
    @discussion.save
    respond_with(@discussion)
  end

  def update
    @discussion.update(discussion_params)
    respond_with(@discussion)
  end

  def destroy
    @discussion.destroy
    respond_with(@discussion)
  end

  private
    def set_discussion
      @discussion = Discussion.find(params[:id])
    end

    def discussion_params
      params.require(:discussion).permit(:title, :project_id)
    end
end
