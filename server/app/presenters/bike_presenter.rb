class BikePresenter < ApplicationPresenter
  def index
  end

  def api_index
    build do
      count subject.length
      total subject.length
      bikes subject do |item|
        name item.name
        id   item.id
      end
    end
  end

  def show
    build do
      name subject.name
    end
  end

  def new
    "new bike"
  end
end
