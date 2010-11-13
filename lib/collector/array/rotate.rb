class Array
  unless method_defined?(:rotate)
    def rotate(n = 1)
      new_start = n % self.size
      self[new_start..-1] + self[0...new_start]
    end
  end

  unless method_defined?(:rotate!)
    def rotate!(n = 1)
      self.replace(rotate(n))
    end
  end
end
