require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = self.split(/\.|\?|\!/)
    count.delete_if{|sentence| sentence.length == 0}
    return count.length
  end
end
