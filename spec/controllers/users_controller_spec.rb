RSpec.describe UsersController do
  render_views

  let(:json) { JSON.parse(response.body) }

  describe 'GET /api/user/:id' do
    before do
      response = get :show, format: :json, params: { 'id' => 1 }
      # @user = User.create('id' => 2, 'nickname' => 'K', 'password' => 'password')
    end

    # context 'when a user is valid' do
      # it 'returns a status code 200' do
      #   expect(response).to have_http_status(200)
      # end

      # it 'returns JSON data for a specific user ID' do
      #   debugger
      #   expect(JSON.parse(response.body)).to eq(@user.id)
      # end
      #
      # it 'returns JSON data for a specific users nickname' do
      #   expect(json['nickname']).to eq(@user.nickname)
      # end
      #
      # it 'returns JSON data for a specific users recipes' do
      #   expect(json['recipes']).to eq(@user.recipes)
  #     # end
  #   end
  # end

    context 'when user is not valid' do
      it 'returns unauthorized JSON' do
        expect(JSON.parse(response.body)).to match({'error'=>'Not Authorized'})
      end
    end
  end
end
