# OmniAuth OpenWechat OAuth2

Read Weibo OAuth2 docs for more details: [移动应用微信登录开发指南](https://open.weixin.qq.com/cgi-bin/showdocument?action=dir_list&t=resource/res_list&verify=1&lang=zh_CN)

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

## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-open_wechat/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
