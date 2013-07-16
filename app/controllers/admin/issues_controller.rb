class Admin::IssuesController < AdminController
	# GET /admin/issues/index
	def index
    @issues = Issue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @issues }
    end
  end

	# GET /admin/issues/edit/:id
  def edit
    @issue = Issue.find(params[:id])
    @issue_progress = IssueProgress.new
  end

  # PUT /admin/issues/1
  def update
    @issue = Issue.find(params[:id])

    respond_to do |format|
      if @issue.update_attributes(params[:issue])
        format.html { redirect_to admin_issues_path, notice: 'Issue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/issues/1
  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy

    respond_to do |format|
      format.html { redirect_to admin_issues_path }
      format.json { head :no_content }
    end
  end

  # POST /admin/issues/create/progress
  def create_progress
    @issue = Issue.find(params[:issue_progress][:issue_id])
		params[:issue_progress].delete :issue_id
    @issue_progress = IssueProgress.new(params[:issue_progress])
    @issue.issue_progresses << @issue_progress
    respond_to do |format|
      if @issue_progress.save && @issue.save
        format.html { redirect_to admin_edit_issue_path(@issue) , notice: 'Issue progess was successfully created.' }
        format.json { render json: @issue_progress, status: :created, location: @issue_progress }
      else
        format.html { redirect_to @issue, notice: 'Issue progess was successfully created.' }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/issues/delete/progress/1
  def destroy_progress
    @issue_progress = IssueProgress.find(params[:id])
    @issue = @issue_progress.issue
    @issue_progress.destroy

    respond_to do |format|
      format.html { redirect_to admin_edit_issue_path(@issue) }
      format.json { head :no_content }
    end
  end
end
