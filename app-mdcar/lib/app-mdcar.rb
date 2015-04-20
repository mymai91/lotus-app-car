require 'lotus/model'
Dir["#{ __dir__ }/app-mdcar/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/app-mdcar_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/app-mdcar_development.sqlite3'
  #    adapter type: :sql, uri: 'postgres://localhost/app-mdcar_development'
  #    adapter type: :sql, uri: 'mysql://localhost/app-mdcar_development'
  #
  adapter type: :file_system, uri: ENV['APP_MDCAR_DATABASE_URL']

  ##
  # Database mapping
  #
  # Intended for specifying application wide mappings.
  #
  # You can specify mapping file to load with:
  #
  # mapping "#{__dir__}/config/mapping"
  #
  # Alternatively, you can use a block syntax like the following:
  #
  mapping do
    # collection :users do
    #   entity     User
    #   repository UserRepository
    #
    #   attribute :id,   Integer
    #   attribute :name, String
    # end
  end
end.load!
