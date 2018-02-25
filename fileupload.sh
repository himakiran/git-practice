#!/bin/bash
#fileupload.sh

function fileupload {
echo $@
echo "Do you want to upload this file $1 ?(y/n)"
read response
if [[ "$response" = "y" ]]
then
echo "Uploading $1 to himakiran-droplet:/root/upload"
cmdstr="scp -i ~/.ssh/digitalOcean_rsa $1 root@159.89.174.122:/root/upload/"
eval $cmdstr
else
echo "cancelling upload .."
fi
}
