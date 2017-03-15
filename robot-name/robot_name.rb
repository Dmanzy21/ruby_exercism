class Robot


  attr_reader :name

  def initialize
    name_protocol
  end

  def reset
    name_protocol
  end


  private
    @@name_list = []

    def generate_name
      gen_name = 0
      while @@name_list.include? gen_name or gen_name == 0
        gen_name = ('A'..'Z').to_a.shuffle[0,2].join + ('0'..'9').to_a.shuffle[0,3].join
      end
      gen_name
    end

    def name_protocol
      old_name = @name
      @name = generate_name
      @@name_list.delete_if {|i| i == old_name }
      @@name_list << @name
    end
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
