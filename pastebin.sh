expiration='1H' # N = Never | 10M = 10 Minutes | 1H = 1 Hour ..
token='' # Pastebin API Token (Login with account and get token on pastebin.com/api)
input='test' # The actual input - via command args

echo $token

curl -X POST https://pastebin.com/api/api_post.php -d '
{
	"api_dev_key"			:  	$token,
	"api_option"			:	"paste",
	"api_paste_code"		: 	$input,
	"api_paste_private"		:	1,
	"api_paste_name"		:	"QPaste - http://github.com/mrousavy/QPastebin",
	"api_paste_expire_date"	:	$expiration
}'
echo ''
