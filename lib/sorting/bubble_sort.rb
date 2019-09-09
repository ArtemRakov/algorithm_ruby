module AlgorithmRuby
  module Sorting
    class BubbleSort
      def self.run(list)
        return [] if list.empty?
        n = list.length

        loop do
          swapped = false

          (n - 1).times do |i|
            if list[i] > list[i + 1]
              list[i], list[i + 1] = list[i + 1], list[i]
              swapped = true
            end
          end

          break unless swapped
        end

        list
      end
    end
  end
end
