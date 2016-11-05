RSpec.describe RecipesController do
  render_views
  let(:json) { JSON.parse(response.body) }

  describe 'GET /api/recipe/:id' do
    before do
      response = get :show, format: :json, params: { 'id' => 1 }
    end

    context 'when a recipe exists' do
      it 'returns a status code 200' do
        # need to somehow include the auth token here...
        expect(response).to have_http_status(200)
      end
    end
  end
end
