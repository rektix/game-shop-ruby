require "test_helper"

class GpusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gpu = gpus(:one)
  end

  test "should get index" do
    get gpus_url
    assert_response :success
  end

  test "should get new" do
    get new_gpu_url
    assert_response :success
  end

  test "should create gpu" do
    assert_difference('Gpu.count') do
      post gpus_url, params: { gpu: { name: @gpu.name, ram: @gpu.ram } }
    end

    assert_redirected_to gpu_url(Gpu.last)
  end

  test "should show gpu" do
    get gpu_url(@gpu)
    assert_response :success
  end

  test "should get edit" do
    get edit_gpu_url(@gpu)
    assert_response :success
  end

  test "should update gpu" do
    patch gpu_url(@gpu), params: { gpu: { name: @gpu.name, ram: @gpu.ram } }
    assert_redirected_to gpu_url(@gpu)
  end

  test "should destroy gpu" do
    assert_difference('Gpu.count', -1) do
      delete gpu_url(@gpu)
    end

    assert_redirected_to gpus_url
  end
end
