if RAILS_ENV == 'production'
	Rails.application.middleware.use Hassle
end
