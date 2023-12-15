# Levenshtein (edit) distance 
# LC: 72
# Original algorithm: removal, insertion, or substitution
# Partially understand. Will need to write the chart
# down and under the [j - 1][j-1] cases about the pointer
class Solution:
	def minDistance(self, word1: str, word2: str) -> int:
		n = len(word1)
		m = len(word2)

		# Create a distance matrix D[n+1,m+1];consider base case and reverse!
		dp = [[0] * (m+1) for _ in range(n+1)]

		# Initialization: the zeroth row and column is the distance from the empty string
		for i in range(1, n + 1):
			dp[i][0] = i

		for j in range(1, m + 1):
			dp[0][j] = j

		# Recurrence relation:
		for i in range(1, n + 1):
			for j in range(1, m + 1):
				# mild confusion here
				if word1[i - 1] == word2[j - 1]:
					dp[i][j] = dp[i - 1][j - 1]
				else:
					# 3 Operations:	SUBSTITUTE(DIAGONAL)	    	INSERT(UPWARDS)
					dp[i][j] = min(dp[i - 1][j - 1], dp[i - 1][j], dp[i][j - 1]) + 1
					#									DELETE(LEFTWARDS)
		return dp[n][m]

