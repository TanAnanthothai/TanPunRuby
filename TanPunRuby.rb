#5631259321 Teerakorn Ananthothai 
#5631360021 Sukrit Sukasemsarn

	require 'CSV'
	# studentsData_csv = CSV.read('data.csv', headers:true)
	data = CSV.read('data.csv', :headers=>true)
	$studentName = data["Name"]
	$studentScore = data["Score"]
	$studentColor = data["Color"]

	#1 Answer to question Number 1 
	puts "The student who has the highest score in the class is " + $studentName[$studentScore.index($studentScore.max)] + "."
	puts "The student who has the lowest score in the class is " + $studentName[$studentScore.index($studentScore.min)] + "."

	#2 Answer to question Number 2
	$studentScore = $studentScore.map { |i| i.to_i }
	$total = $studentScore.inject{|sum,x| sum + x } / $studentScore.size
	puts "The mean of all student scores are " + $total.to_s + "."


	#3 Answer to question Number 3
    $most=$studentColor.group_by{|a| a }.sort_by{|a,b| b.size<=>a.size}.first[0]
    puts "the most common color is " + $most +"."
    def least_common_value(input)
  	input.group_by do |e|
    e
  	end.values.min_by(&:size).first
	end
    puts "the least common color is " + least_common_value($studentColor) +"."

	#4 Answer to question Number 4
	$studentName.each do |part|
		puts (part<<" ").downcase.gsub(/[a-zA-Z] /){|fix| fix.upcase}.chomp
	end

	# reference
# http://stackoverflow.com/questions/8476769/import-from-csv-into-ruby-array-with-1st-field-as-hash-key-then-lookup-a-field
# http://www.sitepoint.com/guide-ruby-csv-library-part/
# and many more