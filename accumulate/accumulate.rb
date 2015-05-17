module Accumulate
  def accumulate( &block )
    # Doesn't use map or collect or etc.
    return enum_for(:accumulate) unless block_given?
    modified = []
    each{ |e| modified << block.call(e) }
    modified
  end
end

Array.class_eval { include Accumulate }