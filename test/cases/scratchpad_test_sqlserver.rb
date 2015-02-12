require 'cases/helper_sqlserver'

class Season < ActiveRecord::Base
  self.primary_key = nil
end

class ScratchpadTestSQLServer < ActiveRecord::TestCase

  before do
    Season.create! name: 'Winter'
    Season.create! name: 'Spring'
    Season.create! name: 'Summer'
    Season.create! name: 'Fall'
  end

  it 'helps debug things' do
    binding.pry
  end

end
