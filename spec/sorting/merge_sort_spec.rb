require 'spec_helper'

describe AlgorithmRuby::Sorting::MergeSort do
  let(:merge_sort) { AlgorithmRuby::Sorting::MergeSort }

  it 'correctly sorts an array' do
    list = [20, 5, 5, 1, 3]

    expect(merge_sort.run(list)).to eq [1, 3, 5, 5, 20]
  end

  it 'does not raise an error on empty array' do
    expect { merge_sort.run([]) }.to_not raise_error
  end
end
