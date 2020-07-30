class UsersController < ApplicationController
  def index
    @user = User.find_by(id: params[:id])
    @route1 = Route.find_by(id: @current_user.route1_id)
    @route2 = Route.find_by(id: @current_user.route2_id)
    @route3 = Route.find_by(id: @current_user.route3_id)
    
  end
  
  def new
    @user = User.new
  end
  
  def create
    @route = Route.find_by(id: params[:id])
    @route1 = Route.find_by(id: 1)
    @route2 = Route.find_by(id: 2)
    @route3 = Route.find_by(id: 3)

    @user = User.new(
      name: params[:name],
      email: params[:email],
      image_name: "default_user.png",
      password: params[:password],
      route1_id: @route1.id,
      route2_id: @route2.id,
      route3_id: @route3.id
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end
  
  def edit
    @user = User.find_by(id: params[:id])
    @route = Route.all
    @route1 = Route.find_by(id: 1)
    @route2 = Route.find_by(id: 2)
    @route3 = Route.find_by(id: 3)
  end
  
  def update
    @user = User.find_by(id: params[:id])
    @route = Route.find_by(id:params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.route1_id = params[:route1_id]
    @user.route2_id = params[:route2_id]
    @user.route3_id = params[:route3_id]
    
    if params[:image]
      @user.image_name = "#{@user.id}.png"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image_name}", image.read)
    end
    
    if @user.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end
  
  def login_form
  end
  
  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/users/#{@user.id}")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("users/login_form")
    end
  end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/login")
  end
  
  def ensure_correct_user
    if @current_user.id != params[:id].to_i
      flash[:notice] = "権限がありません"
      redirect_to("/users/#{@user.id}")
    end
  end
end
