#Two Tier with S3 access Infrastructure

The two tier architecture has an ELB and Apache server. This infrstructure provides High Availability and Scalability. 

### Instructions

The yaml template takes S3 Bucket Name , File name that need to be downloaded, Stack Name, Instance type and SSH Key as Input. Cloudformation creates a 2 Tier architecture with ELB accepting HTTP connections using port 80 and Apache Web Server EC2 Instances would serve the requests through the ELB.   

*Output : Provides an Elastic Load Balancer URL that displays a hmtl that has the list of files in /tmp. This where the file gets downloaded from S3 bucket*

## Best Practices Used

1. ELB with Healthcheck
2. MultiAZ provides High Availability
3. AutoScaling Up/Down
4. Security Groups 
5. Instance Profile
6. STS AssumeRole