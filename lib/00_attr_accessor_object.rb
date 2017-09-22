class AttrAccessorObject
  def self.my_attr_accessor(*names)

    names.each do |name|
      name_inst = "@#{name}"
      define_method(name) {instance_variable_get(name_inst)}
      define_method("#{name}=") { |value| instance_variable_set(name_inst, value)}
    end
  end
end

#WHERE WOULD ARG COME FROM
