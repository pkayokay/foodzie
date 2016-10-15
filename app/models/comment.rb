class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

    RATINGS = {
    'One star'    => '1',
    'Two stars'   => '2',
    'Three stars' => '3',
    'Four stars'  => '4',
    'Five stars'  => '5'
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end

end
