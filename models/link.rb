# require 'bookmark_manager'
require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  # table :links

  property :id, Serial
  property :title, String
  property :url, String

end

DataMapper.setup(:default, 'postgres://localhost/bookmark_manager')

DataMapper.finalize
DataMapper.auto_upgrade!
