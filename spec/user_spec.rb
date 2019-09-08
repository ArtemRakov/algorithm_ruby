require 'spec_helper'

describe AlgorithmRuby::Sorting::QuickSort do
  let(:quick_sort) { AlgorithmRuby::Sorting::QuickSort }

  it 'correctly sorts an array' do
    list = [20, 5, 5, 1, 3]

    expect(quick_sort.run(list)).to eq [1, 3, 5, 5, 20]
  end

  it 'does not raise an error on empty array' do
    expect { quick_sort.run([]) }.to_not raise_error
  end
end
