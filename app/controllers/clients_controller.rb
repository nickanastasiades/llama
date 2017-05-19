class ClientsController < ApplicationController
  def index
    @clients = Client.all

    render("clients/index.html.erb")
  end

  def show
    @client = Client.find(params[:id])

    render("clients/show.html.erb")
  end

  def new
    @client = Client.new

    render("clients/new.html.erb")
  end

  def create
    @client = Client.new

    @client.first_name = params[:first_name]
    @client.last_name = params[:last_name]
    @client.email = params[:email]
    @client.company_id = params[:company_id]
    @client.role = params[:role]

    save_status = @client.save

    if save_status == true
      redirect_to("/clients/#{@client.id}", :notice => "Client created successfully.")
    else
      render("clients/new.html.erb")
    end
  end

  def edit
    @client = Client.find(params[:id])

    render("clients/edit.html.erb")
  end

  def update
    @client = Client.find(params[:id])

    @client.first_name = params[:first_name]
    @client.last_name = params[:last_name]
    @client.email = params[:email]
    @client.company_id = params[:company_id]
    @client.role = params[:role]

    save_status = @client.save

    if save_status == true
      redirect_to("/clients/#{@client.id}", :notice => "Client updated successfully.")
    else
      render("clients/edit.html.erb")
    end
  end

  def destroy
    @client = Client.find(params[:id])

    @client.destroy

    if URI(request.referer).path == "/clients/#{@client.id}"
      redirect_to("/", :notice => "Client deleted.")
    else
      redirect_to(:back, :notice => "Client deleted.")
    end
  end
end
