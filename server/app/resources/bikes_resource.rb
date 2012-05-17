class BikesResource < ApplicationResource
  # GET HTTP Method /bikes
  def index
    bikes = BikeInterface.all_bikes

    respond_to do |format|
      format.json { BikePresenter.new(bikes).api_index }
      format.html { BikePresenter.new(bikes).index }
    end
  end

  # GET HTTP Method /bikes/:id
  def show
    bike = BikeInterface.find_bike(1)

    respond_to do |format|
      format.json {"{ scott: 'R2' }"}
      format.html { BikePresenter.new(bike).show }
    end
  end

  # GET HTTP Method / HTML only /bikes/new
  def new
    bike = BikeInterface.new_bike
    BikePresenter.new(bike).new
  end

  # POST HTTP Method /bikes
  def create

  end

  # GET HTTP Method / HTML only /bikes/:id/edit
  def edit
    "edit"
  end

  # PUT HTTP Method /bikes/:id, POST HTTP Method /bikes/:id?_method=put
  def update

  end

  # DELETE HTTP Method /bikes/:id, POST HTTP Method /bikes/:id?_method=delete
  def destroy

  end
end
