class User < ActiveRecord::Base
  def kid_friendly
    if self.age < 21
      Restaurant.where(serves_alcohol: false)
    else 
      Restaurant.all
    end 
  end

  def sufficient_height
    # if self.height < 
    #   Ride.where(serv)
    # else
    #   Ride.all
    # end 
  end
end