# OmniAuth OpenWechat OAuth2

Read Wechat OAuth2 docs for more details: [微信开放平台开发指南](https://open.weixin.qq.com/cgi-bin/showdocument?action=dir_list&t=resource/res_list&verify=1&lang=zh_CN)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-open_wechat'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-open_wechat

## Usage

Here's a quick example, adding the middleware to a Rails app in
`config/initializers/omniauth.rb:`

```
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :open_wechat, ENV['OPEN_WECHAT_KEY'], ENV['OPEN_WECHAT_SECRET'], :scope => 'snsapi_login'
end
```

## Current Version

`0.0.4`

## Authentication Hash

Here's an example Authentication Hash available in `request.env['omniauth.auth']` :

```
{
	"provider"=>"open_wechat", 
	"uid"=>"xxx...", 
	"info"=>{
		"nickname"=>"free", 
		"sex"=>1, 
		"province"=>"", 
		"city"=>"", 
		"country"=>"CN", 
		"headimgurl"=>"http://wx.qlogo.cn/mmopen/574VdhMFwaGdhhGuGWZicMYibnBSnzYSU8S6c3mJrqneYpm1YmGkBjHX5T9xj4TdeRWfHPmXORTqIt7F0G2y4TJA/0", 
		"name"=>"free"
	}, 
	"credentials"=>{
		"token"=>"xxx...", 
		"refresh_token"=>"xxx...", 
		"expires_at"=>2015-06-04 16:17:26 +0800, 
		"expires"=>true
	}, 
	"extra"=>{
		"raw_info"=>{
			"openid"=>"xxx...", 
			"nickname"=>"free", 
			"sex"=>1, 
			"language"=>"zh_CN", 
			"city"=>"", 
			"province"=>"", 
			"country"=>"CN", 
			"headimgurl"=>"http://wx.qlogo.cn/mmopen/574VdhMFwaGdhhGuGWZicMYibnBSnzYSU8S6c3mJrqneYpm1YmGkBjHX5T9xj4TdeRWfHPmXORTqIt7F0G2y4TJA/0", 
			"privilege"=>[], 
			"unionid"=>"xxx..."
		}
	}
}
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-open_wechat/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
