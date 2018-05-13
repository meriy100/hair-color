require 'rails_helper'


RSpec.describe HomeController, type: :request do
  describe 'GET /' do
    it 'success' do
      is_expected.to eq 200
    end
  end
end

