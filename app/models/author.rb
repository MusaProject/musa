class Author < ActiveRecord::Base
  validates_presence_of :name
  has_many :songs

  def self.author_list
    Author.all.map do |author|
      [author.name, author.id]
    end
  end
end
