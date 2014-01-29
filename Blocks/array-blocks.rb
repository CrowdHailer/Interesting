class Array
	def our_map
		output = []
		for i in (0..self.length-1) do 
			output << yield(self[i])
		end
		output
	end
end



describe Array do
	let(:initial) { [1,2,3] }

	it 'should map an array' do
		expect(initial.our_map { |x| x*2 }).to eq([2,4,6])
	end
end