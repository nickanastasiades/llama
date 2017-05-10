class FilesController < ApplicationController
  def index
    @files = File.all

    render("files/index.html.erb")
  end

  def show
    @file = File.find(params[:id])

    render("files/show.html.erb")
  end

  def new
    @file = File.new

    render("files/new.html.erb")
  end

  def create
    @file = File.new

    @file.project_id = params[:project_id]
    @file.name = params[:name]
    @file.description = params[:description]

    save_status = @file.save

    if save_status == true
      redirect_to("/files/#{@file.id}", :notice => "File created successfully.")
    else
      render("files/new.html.erb")
    end
  end

  def edit
    @file = File.find(params[:id])

    render("files/edit.html.erb")
  end

  def update
    @file = File.find(params[:id])

    @file.project_id = params[:project_id]
    @file.name = params[:name]
    @file.description = params[:description]

    save_status = @file.save

    if save_status == true
      redirect_to("/files/#{@file.id}", :notice => "File updated successfully.")
    else
      render("files/edit.html.erb")
    end
  end

  def destroy
    @file = File.find(params[:id])

    @file.destroy

    if URI(request.referer).path == "/files/#{@file.id}"
      redirect_to("/", :notice => "File deleted.")
    else
      redirect_to(:back, :notice => "File deleted.")
    end
  end
end
