######################################################################
###
### Downingtown Proxy Profile
###
######################################################################

### git 

[ -x git ] && git config --global http.proxy http://10.10.180.38:3128

### CURL
f=$HOME/.curlrc
grep "^proxy =" $f &>/dev/null || echo "proxy = http://10.10.180.38:3128" >> $f
unset f

### VARS
http_proxy=http://10.10.180.38:3128
https_proxy=https://10.10.180.38:3128
ftp_proxy=ftp://10.10.180.38:3128
HTTP_PROXY=$http_proxy ; HTTPS_PROXY=$https_proxy ; FTP_PROXY=$ftp_proxy

no_proxy='127.0.0.1, localhost, 169.254.169.254, 10.10.148.0/22, .example.com'
NO_PROXY=$no_proxy

export http_proxy https_proxy ftp_proxy no_proxy
export HTTP_PROXY HTTPS_PROXY FTP_PROXY NO_PROXY

