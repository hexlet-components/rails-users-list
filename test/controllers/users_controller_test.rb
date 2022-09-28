# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)

    @attrs = {
      first_name: Faker::Name.unique.first_name,
      last_name: Faker::Name.last_name,
      phone: Faker::PhoneNumber.cell_phone,
      email: Faker::Internet.email
    }
  end

  test 'should get index' do
    get users_url
    assert_response :success
  end

  test 'should get new' do
    get new_user_url
    assert_response :success
  end

  test 'should create user' do
    post users_url, params: { user: @attrs }

    user = User.find_by @attrs

    assert { user }
    assert_redirected_to user_url(user)
  end

  test 'should show user' do
    get user_url(@user)
    assert_response :success
  end

  test 'should get edit' do
    get edit_user_url(@user)
    assert_response :success
  end

  test 'should update user' do
    patch user_url(@user), params: { user: @attrs }

    @user.reload

    assert { @user.first_name == @attrs[:first_name] }
    assert_redirected_to user_url(@user)
  end

  test 'should destroy user' do
    delete user_url(@user)

    assert_redirected_to users_url

    assert { !User.exists? @user.id }
  end
end
