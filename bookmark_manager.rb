require 'rubygems'
require 'data_mapper'

DataMapper.setup(:default, 'postgres://localhost/bookmark_manager')


DataMapper.finalize
DataMapper.auto_upgrade!
