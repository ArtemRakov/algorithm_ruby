module AlgorithmRuby
  module Sorting
    class QuickSort
      def self.run(list)
        return [] if list.empty?
        pivot = list.shift
        left, right = list.partition { |el| el < pivot }
        run(left) + [pivot] + run(right)
      end
    end
  end
end
