class IssueGroupsController < ApplicationController
  # GET /issue_groups
  # GET /issue_groups.json
  def index
    @issue_groups = IssueGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @issue_groups }
    end
  end

  # GET /issue_groups/1
  # GET /issue_groups/1.json
  def show
    @issue_group = IssueGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @issue_group }
    end
  end

  # GET /issue_groups/new
  # GET /issue_groups/new.json
  def new
    @issue_group = IssueGroup.new

    #Load possible GitHub
    @repos = GithubWrapper.new()
    @repos.list_all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @issue_group }
    end
  end

  # GET /issue_groups/1/edit
  def edit
    @issue_group = IssueGroup.find(params[:id])
  end

  # POST /issue_groups
  # POST /issue_groups.json
  def create
    @issue_group = IssueGroup.new(params[:issue_group])

    respond_to do |format|
      if @issue_group.save
        format.html { redirect_to @issue_group, notice: 'Issue group was successfully created.' }
        format.json { render json: @issue_group, status: :created, location: @issue_group }
      else
        format.html { render action: "new" }
        format.json { render json: @issue_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /issue_groups/1
  # PUT /issue_groups/1.json
  def update
    @issue_group = IssueGroup.find(params[:id])

    respond_to do |format|
      if @issue_group.update_attributes(params[:issue_group])
        format.html { redirect_to @issue_group, notice: 'Issue group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @issue_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issue_groups/1
  # DELETE /issue_groups/1.json
  def destroy
    @issue_group = IssueGroup.find(params[:id])
    @issue_group.destroy

    respond_to do |format|
      format.html { redirect_to issue_groups_url }
      format.json { head :no_content }
    end
  end
end
