class PagesController < ApplicationController
  before_action :disable_nav, only: [:welcome_page]
  before_action :disable_footer, only: [:welcome_page]

    def index
    end


    def welcome_page
      @disable_nav = true
      @disable_footer = true
    end

  end
