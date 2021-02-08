Activity 5

Deploy Static Website on cloud storage :

1. create a bucket (sushant-bucket)
2. Upload html file (web.html)
3. Make bucket public using command :  gsutil -m acl ch -r -u Allusers:R gs://bucket-name/*
4. Copy the url of object and paste it in new tab 
5. A static website is opened.
