# frozen_string_literal: true

require 'test_helper'

class ProxyControllerTest < ActionDispatch::IntegrationTest
  test 'should get input' do
    get proxy_input_url
    assert_response :success
  end

  test 'check client with xslt format' do
    get proxy_output_url, params: { num: '263', side: :"client-with-xslt" }
    assert_response :success
    assert_includes @response.headers['Content-Type'], 'application/xml', 'error of checking format'
  end

  test 'check client format with xml format' do
    get proxy_output_url, params: { num: '263', side: :client }
    assert_response :success
    assert_includes @response.headers['Content-Type'], 'application/xml', 'error of checking format'
  end
  test 'check client format with html format' do
    get proxy_output_url, params: { num: '263', side: :server }
    assert_response :success
    assert_includes @response.headers['Content-Type'], 'text/html', 'error of checking format'
  end
end
