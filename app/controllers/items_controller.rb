class ItemsController < ApplicationController
  def index
    @items = Item.all

    render("items/index.html.erb")
  end

  def show
    @item = Item.find(params[:id])

    render("items/show.html.erb")
  end

  def new
    @item = Item.new

    render("items/new.html.erb")
  end


  def create
    	@item = Item.create(item_params)
    	if @item.save
    	  render json: { message: "success" }, :status => 200
    	else
    	  #  you need to send an error header, otherwise Dropzone
            #  will not interpret the response as an error:
    	  render json: { error: @item.errors.full_messages.join(',')}, :status => 400
    	end
    end

    private
      def item_params
      	params.require(:item).permit(:image)
      end

#  def create
#    @item = Item.new
#
#    @item.project_id = params[:project_id]
#    @item.name = params[:name]
#    @item.description = params[:description]
#
#    save_status = @item.save
#
##      redirect_to("/items/#{@item.id}", :notice => "Item created successfully.")
  #  else
  #    render("items/new.html.erb")
  #  end
  #end

  def edit
    @item = Item.find(params[:id])

    render("items/edit.html.erb")
  end

  def update
    @item = Item.find(params[:id])

    @item.project_id = params[:project_id]
    @item.name = params[:name]
    @item.description = params[:description]

    save_status = @item.save

    if save_status == true
      redirect_to("/items/#{@item.id}", :notice => "Item updated successfully.")
    else
      render("items/edit.html.erb")
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    if URI(request.referer).path == "/items/#{@item.id}"
      redirect_to("/", :notice => "Item deleted.")
    else
      redirect_to(:back, :notice => "Item deleted.")
    end
  end
end
