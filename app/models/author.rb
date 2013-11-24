class Author < ActiveRecord::Base
  has_many :songs

  def self.author_list
    Author.all.map do |author|
      [author.name, author.id]
    end
  end
end
