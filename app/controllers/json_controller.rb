class JsonController < ApplicationController

  def index
  end

  def pretty
    unless params[:input].nil?
      require 'json'
      input = JSON.parse(params[:input])
      render :text => JSON.pretty_generate(input)
    else
      render :nothing => true
    end
  end
end
