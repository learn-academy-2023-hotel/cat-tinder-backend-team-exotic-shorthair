require 'rails_helper'

RSpec.describe Cat, type: :model do
  it "should validate name exists in database entry" do
    cat = Cat.create(age:3, enjoys: 'reading by candlelight', image: 'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg')
    expect(cat.errors[:name]).to_not be_empty
  end

  it "should valitdate age exists in db entry" do
    cat = Cat.create(name: 'Buster', enjoys: 'testing using RSpec' , image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80')
    expect(cat.errors[:age]).to_not be_empty
  end

  it "should validate enjoys exists in the db entry" do
    cat = Cat.create(name: "Buster", age:3, image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80')
    expect(cat.errors[:enjoys]).to_not be_empty
  end
  it "should validate image exists in the db entry" do
    cat = Cat.create(name: "Buster", age:3, enjoys: 'testing using RSpec')
    expect(cat.errors[:image]).to_not be_empty
  end

  it "should validate enjoys if it has at least 10 characters" do
    cat = Cat.create(name: 'Buster', age: 3, enjoys: 'testing', image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80')
    expect(cat.errors[:enjoys]).to_not be_empty
  end

end












# it "should validate enjoys if it has at least 10 characters" do
#   cat = Cat.create(enjoys: 'Long walks on the beach')
#   expect(cat).to be_valid
# end

# it "should invalidate enjoys if it does not have at least 10 characters" do
#   cat = Cat.create(enjoys: 'Long walks')
#   expect(cat.errors[:enjoys]).to include("is too short (minimum 10 characters)")
# end
