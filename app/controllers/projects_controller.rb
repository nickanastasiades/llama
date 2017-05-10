class ProjectsController < ApplicationController
  def index
    @projects = Project.all

    if @status == "Completed"
      @status_label = "Success"
    elsif @status == "In Progress"
      @status_label = "Warning"
    else
      @status_label = "Default"
    end

    render("projects/index.html.erb")
  end

  def show
    @project = Project.find(params[:id])

    render("projects/show.html.erb")
  end

  def new
    @project = Project.new

    render("projects/new.html.erb")
  end

  def create
    @project = Project.new

    @project.title = params[:title]
    @project.project_type = params[:project_type]
    @project.description = params[:description]
    @project.status = params[:status]
    @project.version = params[:version]
    @project.designer_id = params[:designer_id]
    @project.hours_used = params[:hours_used]

    save_status = @project.save

    if save_status == true
      redirect_to("/projects/#{@project.id}", :notice => "Project created successfully.")
    else
      render("projects/new.html.erb")
    end
  end

  def edit
    @project = Project.find(params[:id])

    render("projects/edit.html.erb")
  end

  def update
    @project = Project.find(params[:id])

    @project.title = params[:title]
    @project.project_type = params[:project_type]
    @project.description = params[:description]
    @project.status = params[:status]
    @project.version = params[:version]
    @project.designer_id = params[:designer_id]
    @project.hours_used = params[:hours_used]

    save_status = @project.save

    if save_status == true
      redirect_to("/projects/#{@project.id}", :notice => "Project updated successfully.")
    else
      render("projects/edit.html.erb")
    end
  end

  def destroy
    @project = Project.find(params[:id])

    @project.destroy

    if URI(request.referer).path == "/projects/#{@project.id}"
      redirect_to("/", :notice => "Project deleted.")
    else
      redirect_to(:back, :notice => "Project deleted.")
    end
  end
end
