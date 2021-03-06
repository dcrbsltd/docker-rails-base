require 'test_helper'

class FrontendControllerTest < ActionController::TestCase
  
  # get '/grid', to: 'frontend#blog_grid', as: 'blog_grid'
  test "should get blog grid" do
    get :blog_grid
    assert_response :success
    assert_template :blog_grid
  end

  # get '/list', to: 'frontend#blog_list', as: 'blog_list'
  test "should get blog list" do
    get :blog_list
    assert_response :success
    assert_template :blog_list
  end

  # get '/story', to: 'frontend#blog_story', as: 'blog_story'
  test "should get blog story" do
    get :blog_story
    assert_response :success
    assert_template :blog_story
  end

  # get '/story_cover', to: 'frontend#blog_story_cover', as: 'blog_story_cover'
  test "should get blog story cover" do
    get :blog_story_cover
    assert_response :success
    assert_template :blog_story_cover
  end

  # get '/classic', to: 'frontend#blog_classic', as: 'blog_classic'
  test "should get blog classic" do
    get :blog_classic
    assert_response :success
    assert_template :blog_classic
  end

  # get '/about', to: 'frontend#about', as: 'frontend_about'
  test "should get about" do
    get :about
    assert_response :success
    assert_template :about
  end
  
  # get '/contact', to: 'frontend#contact', as: 'frontend_contact'
  test "should get contact" do
    get :contact
    assert_response :success
    assert_template :contact
  end
  
  # get '/features', to: 'frontend#features', as: 'frontend_features'
  test "should get features" do
    get :features
    assert_response :success
    assert_template :features
  end
  
  # get '/home_header_nav', to: 'frontend#home_header_nav', as: 'frontend_home_header_nav'
  test "should get home header nav" do
    get :home_header_nav
    assert_response :success
    assert_template :home_header_nav
  end
  
  # get '/', to: 'frontend#index', as: 'frontend_index'
  test "should get index" do
    get :index
    assert_response :success
    assert_template :index
  end
  
  # get '/login', to: 'frontend#login', as: 'frontend_log_in'
  test "should get login" do
    get :login
    assert_response :success
    assert_template :login
  end
  
  # get '/pricing', to: 'frontend#pricing', as: 'frontend_pricing'
  test "should get pricing" do
    get :pricing
    assert_response :success
    assert_template :pricing
  end
  
  # get '/search', to: 'frontend#search', as: 'frontend_search'
  test "should get search" do
    get :search
    assert_response :success
    assert_template :search
  end
  
  # get '/signup', to: 'frontend#signup', as: 'frontend_sign_up'
  test "should get signup" do
    get :signup
    assert_response :success
    assert_template :signup
  end
  
  # get '/support', to: 'frontend#support', as: 'frontend_support'
  test "should get support" do
    sign_in users(:one)
    get :support
    assert_response :success
    assert_template :support
  end
  
  # get '/team', to: 'frontend#team', as: 'frontend_team'
  test "should get team" do
    get :team
    assert_response :success
    assert_template :team
  end

  # root 'frontend#index'
  test "should get root" do
    get :index
    assert_response :success
    assert_template :index
  end
  
  #
  #  When Signed in
  #
  # get '/grid', to: 'frontend#blog_grid', as: 'blog_grid'
  test "should get blog grid when signed in" do
    sign_in users(:one)
    get :blog_grid
    assert_response :success
    assert_template :blog_grid
  end

  # get '/list', to: 'frontend#blog_list', as: 'blog_list'
  test "should get blog list when signed in" do
    sign_in users(:one)
    get :blog_list
    assert_response :success
    assert_template :blog_list
  end

  # get '/story', to: 'frontend#blog_story', as: 'blog_story'
  test "should get blog story when signed in" do
    sign_in users(:one)
    get :blog_story
    assert_response :success
    assert_template :blog_story
  end

  # get '/story_cover', to: 'frontend#blog_story_cover', as: 'blog_story_cover'
  test "should get blog story cover when signed in" do
    sign_in users(:one)
    get :blog_story_cover
    assert_response :success
    assert_template :blog_story_cover
  end

  # get '/classic', to: 'frontend#blog_classic', as: 'blog_classic'
  test "should get blog classic when signed in" do
    sign_in users(:one)
    get :blog_classic
    assert_response :success
    assert_template :blog_classic
  end

  # get '/about', to: 'frontend#about', as: 'frontend_about'
  test "should get about when signed in" do
    sign_in users(:one)
    get :about
    assert_response :success
    assert_template :about
  end
  
  # get '/contact', to: 'frontend#contact', as: 'frontend_contact'
  test "should get contact when signed in" do
    sign_in users(:one)
    get :contact
    assert_response :success
    assert_template :contact
  end
  
  # get '/features', to: 'frontend#features', as: 'frontend_features'
  test "should get features when signed in" do
    sign_in users(:one)
    get :features
    assert_response :success
    assert_template :features
  end
  
  # get '/home_header_nav', to: 'frontend#home_header_nav', as: 'frontend_home_header_nav'
  test "should get home header nav when signed in" do
    sign_in users(:one)
    get :home_header_nav
    assert_response :success
    assert_template :home_header_nav
  end
  
  # get '/index', to: 'frontend#index', as: 'frontend_index'
  test "should get index when signed in" do
    sign_in users(:one)
    get :index
    assert_response :success
    assert_template :index
  end
  
  # get '/login', to: 'frontend#login', as: 'frontend_log_in'
  test "should get login when signed in" do
    sign_in users(:one)
    get :login
    assert_response :success
    assert_template :login
  end
  
  # get '/pricing', to: 'frontend#pricing', as: 'frontend_pricing'
  test "should get pricing when signed in" do
    sign_in users(:one)
    get :pricing
    assert_response :success
    assert_template :pricing
  end
  
  # get '/search', to: 'frontend#search', as: 'frontend_search'
  test "should get search when signed in" do
    sign_in users(:one)
    get :search
    assert_response :success
    assert_template :search
  end
  
  # get '/signup', to: 'frontend#signup', as: 'frontend_sign_up'
  test "should get signup when signed in" do
    sign_in users(:one)
    get :signup
    assert_response :success
    assert_template :signup
  end
  
  # get '/support', to: 'frontend#support', as: 'frontend_support'
  test "should get support when signed in" do
    sign_in users(:one)
    get :support
    assert_response :success
    assert_template :support
  end
  
  # get '/team', to: 'frontend#team', as: 'frontend_team'
  test "should get team when signed in" do
    sign_in users(:one)
    get :team
    assert_response :success
    assert_template :team
  end

  # root 'frontend#index'
  test "should get root when signed in" do
    sign_in users(:one)
    get :index
    assert_response :success
    assert_template :index
  end
end
