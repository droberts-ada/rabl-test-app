require "test_helper"

describe ItemsController do
  it 'gives back an item' do
    item = Item.first
    get item_path(item)

    must_respond_with :success
    body = JSON.parse(response.body, symbolize_names: true)
    body.must_be_kind_of Hash
    body.must_include :item
    body[:item][:id].must_equal item.id
    body[:item][:name].must_equal item.name
  end
end
