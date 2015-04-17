class Hamming
	def self.compute dna_a, dna_b
		hamming = 0
		(0..([dna_a.length, dna_b.length].min - 1)).each do |i|
			if dna_a[i] != dna_b[i]
				hamming += 1
			end
		end
		return hamming
	end
end