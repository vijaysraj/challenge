require 'matrix'

a=20

m1 = Matrix.zero(a)
class Matrix

	def []=(row, column, value)
    @rows[row][column] = value
  end
  def to_readable
    i = 0
    self.each do |number|
      print number.to_s + " "
      i+= 1
      if i == self.column_size
        print "\n"
        i = 0
      end
    end
  end
end
system('clear')

m1[2,1]=m1[2,2]=m1[2,3]=m1[2,4]=m1[2,5]=m1[2,6]=1
m1.to_readable
min=0 and max=a-1
for i in 1..9999999999999

m2=Matrix.zero(a)

0.upto a-1 do |i|
	0.upto a-1 do |j|
		count=0

		

		#-----------left-top corner condition-------------->

		if i==min && j==min
			if m1[i,j+1]==1
			count+=1
			end
			if m1[i+1,j+1]==1
			count+=1
			end
			if m1[i+1,j]==1
			count+=1
			end
		#-----------right-top corner condition------------>
		elsif i==min && j==max
			if m1[i+1,j]==1
			count+=1
			end
			if m1[i+1,j-1]==1
			count+=1
			end
			if m1[i,j-1]==1
			count+=1
			end

	 	#----------------right-bottom corner condition--------------->
	 elsif i==max && j==max
	 	if m1[i-1,j-1]==1
			count+=1
		end
		if m1[i-1,j]==1
			count+=1			
		end
	 	if m1[i,j-1]==1
			count+=1
		end

		#----------------left-bottom corner condition----------------->

	elsif i==max && j==min

			if m1[i-1,j]==1
				count+=1			
			end
			if m1[i-1,j+1]==1
				count+=1			
			end
			if m1[i,j+1]==1
				count+=1
			end
			

		#---------------left-column condition----------------->

	elsif j==min && i!=min && i!=max

			if m1[i-1,j]==1
				count+=1			
			end
			if m1[i-1,j+1]==1
				count+=1			
			end
			if m1[i,j+1]==1
				count+=1
			end
			if m1[i+1,j+1]==1
				count+=1
			end
			if m1[i+1,j]==1
				count+=1
			end

		#--------------top-row condition---------------->

	 elsif i==min && j!=min && j!=max
	 		if m1[i,j+1]==1
				count+=1
			end
			if m1[i+1,j+1]==1
				count+=1
			end
			if m1[i+1,j]==1
				count+=1
			end
			if m1[i+1,j-1]==1
				count+=1
			end
			if m1[i,j-1]==1
				count+=1
			end

		#---------------right-coloumn condition--------------->

	elsif j==max && i!=min && i!=max

		if m1[i+1,j]==1
			count+=1
		end
		if m1[i+1,j-1]==1
			count+=1
		end
		if m1[i,j-1]==1
			count+=1
		end
		if m1[i-1,j-1]==1
			count+=1
		end
		if m1[i-1,j]==1
			count+=1			
		end

	#---------------bottom-row condition--------------->

	elsif i==max && j!=min && j!=max
		if m1[i-1,j-1]==1
			count+=1
		end
		if m1[i-1,j]==1
			count+=1			
		end
		if m1[i-1,j+1]==1
			count+=1			
		end
		if m1[i,j+1]==1
			count+=1
		end
		if m1[i,j-1]==1
			count+=1
		end


	# ------basic 8 conditons-------------------->
		else 
		if m1[i-1,j-1]==1
			count+=1
		end
		if m1[i-1,j]==1
			count+=1			
		end
		if m1[i-1,j+1]==1
			count+=1			
		end
		if m1[i,j+1]==1
			count+=1
		end
		if m1[i+1,j+1]==1
			count+=1
		end
		if m1[i+1,j]==1
			count+=1
		end
		if m1[i+1,j-1]==1
			count+=1
		end
		if m1[i,j-1]==1
			count+=1
		end

	end
	
	if m1[i,j]==1

	if count==3 || count==2
		m2[i,j]=1
	elsif count<2 || count>3
		m2[i,j]=0
	end
else
 	if count==3
	m2[i,j]=1
	end

end


	
	# print "#{count} "
	end
end
puts ""
m2.to_readable
sleep(0.9)
system('clear')

m1=m2
end