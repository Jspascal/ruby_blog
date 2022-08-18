class Api::V1::PostsController < ApplicationController

  # Here I'll render all the posts from the databases
  def index
    posts = Post.all
    render json: posts, status: 200
  end

  # This method looks up the post by it's id, it render either the post or a not found error
  def show
    post = Post.find_by(id: params[:id])
    if post
      render json: post, status: 200
    else
      render json:{error: "Post not found"}
    end
  end

  # As the name implies thie function lets us create a new post
  # if the post save correctly we render the json datas for the post
  # If the operation fails we render an error object
  def create
    post = Post.new(
      title: post_params[:title],
      content: post_params[:content],
      author: post_params[:author]
    )
    if post.save
      render json: post, status: 200
    else
      render json: {error: "Error creating new post."}
    end
  end

  # Private method to retrieve params
  # .require and .permit are built-in methods provided by ActionController
  private

    def post_params
      params.permit([
        :title,
        :content,
        :author
      ])

    end
end
