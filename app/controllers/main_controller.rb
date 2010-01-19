require 'aux'
class MainController < ApplicationController
  def partitions
    @max = 30
    @partitions = []
    if params[:n] != nil and params[:n].to_i <= @max
      @partitions = display_partitions(params[:n].to_i)
    end
  end
end
