module Accumulate
  def accumulate( &func )
    # Doesn't use map or collect or etc.
    modified = []
    self.each{ |e| modified << func.call(e) }
    return modified
  end
end

Array.class_eval { include Accumulate }