#!/bin/sh

# Build a repository that has two simple branches that are ready to be merged together
git init mergeable
cd mergeable

touch verseone.rb
# Add the skeleton of the program
echo "def sayverseone" >> verseone.rb
echo "  puts \"Twas brillig and the slithy toves\"" >> verseone.rb
echo "end" >> verseone.rb
echo "" >> verseone.rb

# Save the code
git add verseone.rb
git commit -m"The skeleton of the verseone method"

echo "def sayversetwo" >> verseone.rb
echo "  puts \"Did gyre and gimble in the wabe\"" >> verseone.rb
echo "end" >> verseone.rb
echo "" >> verseone.rb

# Save the code
git add verseone.rb
git commit -m"The versetwo method"

# Author code on branch two
#git checkout -b feature
#touch versetwo.rb
