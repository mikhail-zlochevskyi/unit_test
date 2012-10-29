# A linked list
class List
  # Nodes for the linked list.
  class Node

    def last
      at = self
      while true
        n = at.next
        if n == nil then return at end
        at = n
      end
    end

    def initialize(d, n = nil)
      @val = d
      @next = n
    end
    attr_reader :next, :val
    attr_writer :next
  end


  # Create the list with its first node.
  def initialize(first)
    @head = Node.new(first)
  end


  def add_at_end(v)
    n = Node.new(v)
    @head.last.next = n
  end


  def each
    p = @head
    while p != nil
      yield p.val
      p = p.next
    end
  end

  def print_list
    self.each {|x| print x , "\n" }
  end

end

list = List.new('BEGIN')
list::add_at_end(1)
list::add_at_end(2)
list::add_at_end('aghrrr0')
list::print_list()
