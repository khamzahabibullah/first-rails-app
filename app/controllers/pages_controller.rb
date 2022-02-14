class PagesController < ApplicationController
  def home
  end

  def about
    @names = ["Salam", "Shuja", "Eisa", "Ahmed", "Mohammad", "Adrian"]
  end

  def contact
    @names = ["Salam", "Shuja", "Eisa", "Ahmed", "Mohammad", "Adrian"]

    if params[:name]
      @names = @names.select { |name| name.downcase == params[:name].downcase}

    end
  end
end
