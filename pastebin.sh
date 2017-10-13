expiration="1H"

curl -X POST -i -H "Content-type: application/json" -X POST https://pastebin.com/api/api_post.php -d '
{
	{ "api_dev_key",  $(token) },
	{ "api_option", "paste" },
	{ "api_paste_code", $(input) },
	{ "api_paste_private" , "1" },
	{ "api_paste_name", "QPaste - http://github.com/mrousavy/QPastebin" },
	{ "api_paste_expire_date", $(expiration) }
}'
