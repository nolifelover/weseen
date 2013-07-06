class IssueProgessesController < ApplicationController
  # GET /issue_progesses
  # GET /issue_progesses.json
  def index
    @issue_progesses = IssueProgess.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @issue_progesses }
    end
  end

  # GET /issue_progesses/1
  # GET /issue_progesses/1.json
  def show
    @issue_progess = IssueProgess.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @issue_progess }
    end
  end

  # GET /issue_progesses/new
  # GET /issue_progesses/new.json
  def new
    @issue_progess = IssueProgess.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @issue_progess }
    end
  end

  # GET /issue_progesses/1/edit
  def edit
    @issue_progess = IssueProgess.find(params[:id])
  end

  # POST /issue_progesses
  # POST /issue_progesses.json
  def create
    @issue_progess = IssueProgess.new(params[:issue_progess])

    respond_to do |format|
      if @issue_progess.save
        format.html { redirect_to @issue_progess, notice: 'Issue progess was successfully created.' }
        format.json { render json: @issue_progess, status: :created, location: @issue_progess }
      else
        format.html { render action: "new" }
        format.json { render json: @issue_progess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /issue_progesses/1
  # PUT /issue_progesses/1.json
  def update
    @issue_progess = IssueProgess.find(params[:id])

    respond_to do |format|
      if @issue_progess.update_attributes(params[:issue_progess])
        format.html { redirect_to @issue_progess, notice: 'Issue progess was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @issue_progess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issue_progesses/1
  # DELETE /issue_progesses/1.json
  def destroy
    @issue_progess = IssueProgess.find(params[:id])
    @issue_progess.destroy

    respond_to do |format|
      format.html { redirect_to issue_progesses_url }
      format.json { head :no_content }
    end
  end
end
