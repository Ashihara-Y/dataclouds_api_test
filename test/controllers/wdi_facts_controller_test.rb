require 'test_helper'

class WdiFactsControllerTest < ActionController::TestCase
  setup do
    @wdi_fact = wdi_facts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wdi_facts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wdi_fact" do
    assert_difference('WdiFact.count') do
      post :create, wdi_fact: { content: @wdi_fact.content, country_code: @wdi_fact.country_code, country_name: @wdi_fact.country_name, series_code: @wdi_fact.series_code, series_name: @wdi_fact.series_name }
    end

    assert_redirected_to wdi_fact_path(assigns(:wdi_fact))
  end

  test "should show wdi_fact" do
    get :show, id: @wdi_fact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wdi_fact
    assert_response :success
  end

  test "should update wdi_fact" do
    patch :update, id: @wdi_fact, wdi_fact: { content: @wdi_fact.content, country_code: @wdi_fact.country_code, country_name: @wdi_fact.country_name, series_code: @wdi_fact.series_code, series_name: @wdi_fact.series_name }
    assert_redirected_to wdi_fact_path(assigns(:wdi_fact))
  end

  test "should destroy wdi_fact" do
    assert_difference('WdiFact.count', -1) do
      delete :destroy, id: @wdi_fact
    end

    assert_redirected_to wdi_facts_path
  end
end
