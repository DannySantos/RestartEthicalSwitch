class ProductsController < ApplicationController
  def postcode
    @response = HTTParty.get("https://digitalapi.auspost.com.au/postcode/search.json?q=#{params["q"]}", :headers => {"AUTH-KEY" => "d390555a-533e-4b84-98ce-0015ff499ace"})
    render json: @response
  end
end