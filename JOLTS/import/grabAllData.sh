cd ../data/;

ftp -n -v ftp.bls.gov << EOT
user anonymous bo.cowgill@gmail.com 
!cd ../data
cd pub/time.series/jt/
prompt
mget * 
**
