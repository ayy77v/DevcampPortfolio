   module TryAdmin

 extend ActiveSupport::Concern

included do
   access all: [:show, :index], user: {except: [:destroy, :new, :edit, :create, :update]}, site_admin: :all

end
end