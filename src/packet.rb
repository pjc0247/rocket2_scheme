class Packet
  attr_reader :fields
  
  def initialize
    @fields = Array.new
  end
end

class BeginPacketProcessor < SexpTraverser
  def on_begin_packet args
    return args[2]
  end
  def on_mixin args
    return nil    
  end
  def on_typename args
    return nil
  end
end
