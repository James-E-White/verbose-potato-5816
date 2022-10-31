class SupermarketsController < ApplicationController
    def index
        @supermarket = Supermarket.all
    end
end