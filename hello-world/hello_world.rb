module HelloWorld
  # Hello world
  def self.hello(name)
    "Hello, #{name==''?'world':name}!"
  end
end