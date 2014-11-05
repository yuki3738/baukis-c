shared_examples 'a protected admin controller' do
  describe '#index' do
    example 'ログインフォームにリダイレクト' do
      get :index
      expect(response).to redirect_to(admin_login_url)
    end
  end

  describe '#show' do
    example 'ログインフォームにリダイレクト' do
      get :show, id: 1
      expect(response).to redirect_to(admin_login_url)
    end
  end
end

shared_examples 'a protected singular admin controller' do
  describe '#show' do
    example 'ログインフォームにリダイレクト' do
      get :show
      expect(response).to redirect_to(admin_login_url)
    end
  end
end
