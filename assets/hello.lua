-- Copyright (C) Xin Huang (3203317@qq.com), http://www.foreworld.net.

local var = ngx.var;

ngx.say('service_name: ', var.__service_name__);
ngx.say('</br>');
ngx.say('tenant_name: ', var.__tenant_name__);
ngx.say('</br>');


ngx.say('-----------');
ngx.say('</br>');

local urlswitcher = require 'urlswitcher';

ngx.say(urlswitcher.getCluster());
ngx.say('</br>');
ngx.say(urlswitcher.getAlias());
