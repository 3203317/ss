-- Copyright (C) Xin Huang (3203317@qq.com), http://www.foreworld.net.

local var = ngx.var;

ngx.say('service_name: ', var.service_name);
ngx.say('</br>');
ngx.say('tenant_name: ', var.tenant_name);
ngx.say('</br>');


ngx.say('-----------');
ngx.say('</br>');

local tenant = ngx.shared.tenant;

ngx.say(tenant:get('alias_test001'));
ngx.say('</br>');
ngx.say(tenant:get('upstream_portal_test002'));
ngx.say('</br>');

if nil == tenant:get('alias_test003') then
    ngx.say('no');
else
    ngx.say('yes');
end
