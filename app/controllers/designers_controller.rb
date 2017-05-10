class DesignersController < ApplicationController
  def index
    @designers = Designer.all

    render("designers/index.html.erb")
  end

  def show
    @designer = Designer.find(params[:id])

    render("designers/show.html.erb")
  end

  def new
    @designer = Designer.new

    render("designers/new.html.erb")
  end

  def create
    @designer = Designer.new

    @designer.first_name = params[:first_name]
    @designer.last_name = params[:last_name]
    @designer.email = params[:email]
    @designer.company_id = params[:company_id]
    @designer.role = params[:role]

    save_status = @designer.save

    if save_status == true
      redirect_to("/designers/#{@designer.id}", :notice => "Designer created successfully.")
    else
      render("designers/new.html.erb")
    end
  end

  def edit
    @designer = Designer.find(params[:id])

    render("designers/edit.html.erb")
  end

  def update
    @designer = Designer.find(params[:id])

    @designer.first_name = params[:first_name]
    @designer.last_name = params[:last_name]
    @designer.email = params[:email]
    @designer.company_id = params[:company_id]
    @designer.role = params[:role]

    save_status = @designer.save

    if save_status == true
      redirect_to("/designers/#{@designer.id}", :notice => "Designer updated successfully.")
    else
      render("designers/edit.html.erb")
    end
  end

  def destroy
    @designer = Designer.find(params[:id])

    @designer.destroy

    if URI(request.referer).path == "/designers/#{@designer.id}"
      redirect_to("/", :notice => "Designer deleted.")
    else
      redirect_to(:back, :notice => "Designer deleted.")
    end
  end
end
