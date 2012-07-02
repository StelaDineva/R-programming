staticPoints=function(n,m)
{
	sampleCount=numeric(0)
	for(i in 1:m)
	{
 		counter=0
		points=sample(1:n,n,replace=F)
		for (j in 1:n)	if(points[j]==j) counter=counter+1
		sampleCount[i]=counter
		print(points)
	}
    print(sampleCount)
    print("Mean is ");
    print(mean(sampleCount))
	print("Variance is ")
    print(var(sampleCount))
}

staticPoints(5,10)
