# Jaccard Index — text similarity
# 
# Intersection over union
# J(doc1, doc2) = doc1 ∩ doc2 / doc1 U doc2 -> num 0:1

class Distance:
	def Jaccard_Index(self, doc1, doc2):
		# Find the unique words in each document
		tokens_doc1 = set(doc1.lower().split())
		tokens_doc2 = set(doc2.lower().split())

		# Compute the interesection of each set
		intersection = tokens_doc1.intersection(tokens_doc2)

		# Compute the union of each set
		union = tokens_doc1.union(tokens_doc2)

		# Calculate Jaccard similarity score with the length
		return float(len(intersection)) / len(union)

solver = Distance()
doc_1 = "Data is the new oil of the digital economy"
doc_2 = "Data is a new oil"
jaccard = solver.Jaccard_Index(doc_1, doc_2)
print(jaccard)
