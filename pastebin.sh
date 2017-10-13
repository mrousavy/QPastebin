title='QPaste - http://github.com/mrousavy/QPastebin'
expiration='1H' # N = Never | 10M = 10 Minutes | 1H = 1 Hour ..
token='4779df04c88bd717d6a7afe671bf7375' # Pastebin API Token (Login with account and get token on pastebin.com/api)

if [ $# -eq 0 ]
then
	echo 'No arguments specified!'
	echo 'Usage: qpaste "MY TEXT"'
	echo '     : qpaste myfile.txt'
else	
	input=$1 # The actual input - via command args

	if [ -f "$1" ] # If arg 1 is a file:
	then
		input="$(cat $1)" # It's a file -> Read content
	fi

	query="api_option=paste&api_dev_key=${token}&api_paste_code=${input}&api_paste_private=1&api_paste_name=${title}&api_paste_expire_date=${expiration}"
	curl -X POST https://pastebin.com/api/api_post.php -d "${query}"
fi

echo ''
