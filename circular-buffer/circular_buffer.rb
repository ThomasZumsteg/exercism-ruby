class CircularBuffer
  def initialize(length)
    @buffer = []
    @length = length
  end
  
  def read
    raise CircularBuffer::BufferEmptyException if @buffer.empty?
    @buffer.shift
  end

  def write(data)
    raise CircularBuffer::BufferFullException if @buffer.length >= @length
    self.write!(data)
  end

  def write!(data)
    return unless data
    @buffer.shift if @buffer.length >= @length
    @buffer.push(data)
  end

  def clear
    @buffer.clear
  end
end

class CircularBuffer::BufferEmptyException < StandardError
end

class CircularBuffer::BufferFullException < StandardError
end
