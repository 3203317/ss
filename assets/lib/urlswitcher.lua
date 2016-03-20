-- Copyright (C) Xin Huang (3203317@qq.com), http://www.foreworld.net.

local _m = {};

local var = ngx.var;
local tenant = ngx.shared.tenant;

function _m.getCluster()
    return tenant:get('upstream_'.. var.service_name  ..'_'.. var.tenant_name);
end;

function _m.getAlias()
    return tenant:get('alias_'.. var.tenant_name);
end;

return _m;
