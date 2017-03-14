class Robot

  @@name_list = []

  def initialize
    @name = generate_name
    @@name_list << @name
  end

  def generate_name
    gen_name = 0
    while @@name_list.include? gen_name or gen_name == 0
      gen_name = ('A'..'Z').to_a.shuffle[0,2].join + ('0'..'9').to_a.shuffle[0,3].join
    end
    gen_name
  end

  def reset
    old_name = @name
    initialize
    @@name_list.delete_if {|i| i == old_name }
  end

  attr_accessor :name
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
