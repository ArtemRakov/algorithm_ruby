module AlgorithmRuby
  module Sorting
    class MergeSort
      def self.run(list)
        return list if list.length < 2

        mid = (list.length / 2).floor
        left = run(list[0..mid - 1])
        right = run(list[mid..list.length])
        merge(left, right)
      end

      def self.merge(left, right)
        if left.empty?
          right
        elsif right.empty?
          left
        elsif left.first < right.first
          first = left.shift
          [first] + merge(left, right)
        else
          first = right.shift
          [first] + merge(left, right)
        end
      end
    end
  end
end
