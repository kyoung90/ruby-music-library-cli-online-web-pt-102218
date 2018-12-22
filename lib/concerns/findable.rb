module Concerns::Findable
  def find_by_name(name)
    all.bsearch {|object| name <=> object.name}
  end

  def find_or_create_by_name(name)
    result = find_by_name(name) || create(name)
    # binding.pry
    # object = find_by_name(name)
    # if object
    #   object
    # else
    #   object = create(name)
    # end
  end
end
