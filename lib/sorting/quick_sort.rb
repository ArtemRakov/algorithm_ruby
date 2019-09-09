module AlgorithmRuby
  module Sorting
    class QuickSort
      def self.run(list)
        return [] if list.empty?
        sample = list.shift
        left, right = list.partition { |el| el < pivot }
        run(left) + [sample] + run(right)
      end
    end
  end
end
