class Foozer < ActiveRecord::Base
  validates :user, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed" }

  def foobar
    "foooooo"
  end
end
