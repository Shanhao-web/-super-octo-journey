require 'test_helper'

class FacultiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faculty = faculties(:one)
  end

  test 'should get index' do
     get faculties_url
   assert_response :success
   end

  #test 'should get new' do
  #get new_faculty_url
  #assert_response :success
  #end

  test "shouldn't create faculties" do
    @faculty = Faculty.create(:description => '')
    assert_not Faculty.exists?(id: @faculty.id)
  end




  #test 'should show faculty' do
  #get faculty_url(@faculty)
  # assert_response :success
  #end

  #test 'should get edit' do
    #  get edit_faculty_url(@faculty)
    #   assert_response :success
    #end

  #test "should update faculty" do
  # patch faculty_url(@faculty), params: { faculty: { description: @faculty.description } }
  # assert_redirected_to faculty_url(@faculty)
  # end

  test 'should destroy faculty' do
    assert_difference('Faculty.count', 0) do
      delete faculty_url(@faculty)
    end


  end
  end





