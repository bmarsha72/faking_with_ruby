class User

  def initialize#no arguments for a user
    @name = Faker::Name.name #faker is a library is designed to fake shit
    @address = Faker::Address.street_address
    @email = Faker::Internet.email
  end

  #def two string method

  def to_hash
    return{
      :name=> @name,
      :addmress => @address,
      :@email=> @email
    }
  end

  def to_json
    self.to_hash.to_json
  end

  def to_s #your job to fix
    return 'not yet implemented'
  end

end
