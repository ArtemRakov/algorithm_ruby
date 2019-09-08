module AlgorithmRuby
  module Sorting
    class QuickSort
      def self.run(list)
        return [] if list.empty?

        sample = list.shift

        less = list.select { |element| element < sample }
        more_or_equal = list.select { |element| element >= sample }

        run(less) + [sample] + run(more_or_equal)
      end
    end
  end
end
