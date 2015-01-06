Attitudeks::Admin.controllers :imagesets do
  get :index do
    @title = "Imagesets"
    @imagesets = Imageset.all
    render 'imagesets/index'
  end

  get :new do
    @title = pat(:new_title, :model => 'imageset')
    @imageset = Imageset.new
    render 'imagesets/new'
  end

  post :create do
    @imageset = Imageset.new(params[:imageset])
    if @imageset.save
      @title = pat(:create_title, :model => "imageset #{@imageset.id}")
      flash[:success] = pat(:create_success, :model => 'Imageset')
      params[:save_and_continue] ? redirect(url(:imagesets, :index)) : redirect(url(:imagesets, :edit, :id => @imageset.id))
    else
      @title = pat(:create_title, :model => 'imageset')
      flash.now[:error] = pat(:create_error, :model => 'imageset')
      render 'imagesets/new'
    end
  end

  get :edit, :with => :id do
    @title = pat(:edit_title, :model => "imageset #{params[:id]}")
    @imageset = Imageset.find(params[:id])
    if @imageset
      render 'imagesets/edit'
    else
      flash[:warning] = pat(:create_error, :model => 'imageset', :id => "#{params[:id]}")
      halt 404
    end
  end

  put :update, :with => :id do
    @title = pat(:update_title, :model => "imageset #{params[:id]}")
    @imageset = Imageset.find(params[:id])
    if @imageset
      if @imageset.update_attributes(params[:imageset])
        flash[:success] = pat(:update_success, :model => 'Imageset', :id =>  "#{params[:id]}")
        params[:save_and_continue] ?
          redirect(url(:imagesets, :index)) :
          redirect(url(:imagesets, :edit, :id => @imageset.id))
      else
        flash.now[:error] = pat(:update_error, :model => 'imageset')
        render 'imagesets/edit'
      end
    else
      flash[:warning] = pat(:update_warning, :model => 'imageset', :id => "#{params[:id]}")
      halt 404
    end
  end

  delete :destroy, :with => :id do
    @title = "Imagesets"
    imageset = Imageset.find(params[:id])
    if imageset
      if imageset.destroy
        flash[:success] = pat(:delete_success, :model => 'Imageset', :id => "#{params[:id]}")
      else
        flash[:error] = pat(:delete_error, :model => 'imageset')
      end
      redirect url(:imagesets, :index)
    else
      flash[:warning] = pat(:delete_warning, :model => 'imageset', :id => "#{params[:id]}")
      halt 404
    end
  end

  delete :destroy_many do
    @title = "Imagesets"
    unless params[:imageset_ids]
      flash[:error] = pat(:destroy_many_error, :model => 'imageset')
      redirect(url(:imagesets, :index))
    end
    ids = params[:imageset_ids].split(',').map(&:strip)
    imagesets = Imageset.find(ids)
    
    if Imageset.destroy imagesets
    
      flash[:success] = pat(:destroy_many_success, :model => 'Imagesets', :ids => "#{ids.to_sentence}")
    end
    redirect url(:imagesets, :index)
  end
end
