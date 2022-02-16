class PostsController < ApplicationController

    def index
        @post = Post.all
    end

    def show
        @post = Post.find(params["id"])
    end
    
    def new
        @post = Post.new
        @post.place_id = params["place_id"]
    end
    
    def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to controller: "places", action: "show", id: @post.place_id
    end

end
