require "rails_helper"

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "returns a successful response with a JSON array of users" do
      users = create_list(:user, 3)

      get "/users", headers: { "Accept" => "application/json" }

      expect(response).to have_http_status(:ok)

      json = JSON.parse(response.body)
      expect(json.length).to eq(3)
      expect(json.first).to include("id", "name")
    end
  end

  describe "GET /users/:id" do
    it "returns a successful response with the user as JSON" do
      user = create(:user)

      get "/users/#{user.id}", headers: { "Accept" => "application/json" }

      expect(response).to have_http_status(:ok)

      json = JSON.parse(response.body)
      expect(json["id"]).to eq(user.id)
      expect(json["name"]).to eq(user.name)
    end

    it "returns 404 for an invalid id" do
      get "/users/999999", headers: { "Accept" => "application/json" }

      expect(response).to have_http_status(:not_found)
    end
  end
end
