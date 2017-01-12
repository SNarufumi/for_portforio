class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]
#   before_action :authenticate_user!, only:[:new,:create,:edit,:update,:destroy]


  # GET /members
  # GET /members.json
  def index
    @members = Member.all
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)
      if @member.save
        redirect_to members_path
      else
        render "new"
      end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
      if @member.update(member_params)
        redirect_to members_path
      else
        redirect_to edit_member_path
      end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @members.destroy
    redirect_to members_path
    
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:name, :content , :image)
    end
end
