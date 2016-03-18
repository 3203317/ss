-----注释

local var = ngx.var;

ngx.say('service_name: ', var.service_name);
ngx.say('</br>');
ngx.say('tenant_name: ', var.tenant_name);
