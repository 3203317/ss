-- Copyright (C) Xin Huang (3203317@qq.com), http://www.foreworld.net.

local var = ngx.var;

ngx.say('service_name: ', var.service_name);
ngx.say('</br>');
ngx.say('tenant_name: ', var.tenant_name);
ngx.say('</br>');


ngx.say('-----------');
ngx.say('</br>');


--if nil == tenant:get('alias_test003') then
--    ngx.say('no');
--else
--    ngx.say('yes');
--end


local urlswitcher = require 'urlswitcher';

ngx.say(urlswitcher.getCluster());
ngx.say('</br>');
ngx.say(urlswitcher.getAlias());
