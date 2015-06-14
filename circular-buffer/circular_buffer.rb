class CircularBuffer
  def initialize(length)
    @buffer = []
    @length = length
  end
  
  def read
    raise BufferEmptyException if @buffer.empty?
    @buffer.shift
  end

  def write(data)
    raise BufferFullException if @buffer.length >= @length
    self.write!(data)
  end

  def write!(data)
    return unless data
    @buffer.shift if @buffer.length >= @length
    @buffer << data
  end

  def clear
    @buffer.clear
  end

  class BufferEmptyException < StandardError; end
  class BufferFullException < StandardError; end
end
