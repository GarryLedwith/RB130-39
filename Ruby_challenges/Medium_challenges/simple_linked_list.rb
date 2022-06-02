class Element
  attr_reader :datum, :next

  def initialize(data, next_element=nil)
    @datum = data
    @next = next_element
  end

  def tail?
    @next.nil?
  end
end

class SimpleLinkedList
  attr_accessor :head

  def size
    size = 0
    current_element = head
    while current_element
      size += 1
      current_element = current_element.next
    end
    size
  end

  def empty?
    head.nil?
  end

  def push(data)
    self.head = Element.new(data, head)
  end

  def pop
    new_datum = peek
    self.head = head.next
    new_datum
  end

  def peek
    size == 0 ? head : head.datum
  end

  def self.from_a(array)
    array = [] if array.nil?

    list = SimpleLinkedList.new
    array.reverse_each do |ele|
      list.push(ele)
    end
    list
  end

  def to_a
    array = []

    current_element = head
    while !current_element.nil?
      array << current_element.datum
      current_element = current_element.next
    end
    array
  end

  def reverse
    new_list = SimpleLinkedList.new

    current_element = head
    while !current_element.nil?
      new_list.push(current_element.datum)
      current_element = current_element.next
    end
    new_list
  end
end
