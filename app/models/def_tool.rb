class DefTool < ActiveRecord::Base
  has_many :example_tools, dependent: :destroy
end
