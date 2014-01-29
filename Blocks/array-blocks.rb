class Array
	def our_map
		output = []
		for i in (0..self.length-1) do 
			output << yield(self[i])
		end
		output
	end

	def our_select
		output, i = [], 0
		while i < self.length
			output << self [i] if yield(self[i])
			i += 1
		end
		output
	end

	def our_each
		for i in self do 
			yield i
		end
	end
end



describe Array do
	let(:initial) { [1,2,3] }
	let(:empty) { [] }

	it 'should map an array' do
		expect(initial.our_map { |x| x*2 }).to eq([2,4,6])
	end

	it 'should map an empty array' do
		expect(empty.our_map { |x| x*2 }).to eq([])
	end

	it 'should select objects in an array' do
		expect(initial.our_select { |x| x.odd? }).to eq([1,3])
	end

	it 'should select an empty array' do
		expect(empty.our_select { |x| x.odd? }).to eq([])
	end

	it 'should be able to access every element' do
		dummy = double :bogus
		array = [dummy, dummy]
		expect(dummy).to receive(:doIt).twice
		array.our_each { |e| e.doIt }
	end

	it 'should be able to accept a proc object' do
		
	end
end