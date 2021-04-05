class SurfboardService

  def all_surfboards
    Surfboard.all
  end

  def search_surfboard(search)
    Surfboard.where('name ILIKE :search OR location ILIKE :search', search: "%#{search}%")
  end

  def filter_surfboards(order)
    case order.to_s
    when 'Price High to Low'
      Surfboard.order(price: :desc)
    when 'Price Low to High'
      Surfboard.order(price: :asc)
    else
      Surfboard.all
    end
  end

  def get_surfboard(id)
    Surfboard.find(id)
  end

  def create_surfboard(surfboard_attributes, user)
    surfboard = Surfboard.new(surfboard_attributes)
    surfboard.user = user
    surfboard.save!
    surfboard
  end

  def update_surfboard(id, user, surfboard_attributes)
    surfboard = Surfboard.find(id)
    surfboard.user = user
    surfboard.update!(surfboard_attributes)
    surfboard
  end

  def delete_surfboard(id, user)
    surfboard = Surfboard.find(id)
    surfboard.user = user
    surfboard.destroy

  end

end


