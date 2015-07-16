class Food < ActiveRecord::Base

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      where(nil)
    end
  end

end
