class User < ActiveRecord::Base
  def kid_friendly
    if self.age < 21
  	 @restaurants = Restaurant.where(serves_alcohol: false)
    else 
      @restaurants = Restaurant.all
    end 
  end
end