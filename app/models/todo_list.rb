class TodoList < ActiveRecord::Base
	has_many :todo_items
	  belongs_to :users
end
