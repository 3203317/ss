-- Copyright (C) Xin Huang (3203317@qq.com), http://www.foreworld.net.

local _m = {};

local var = ngx.var;
local tenant = ngx.shared.tenant;

function _m.getCluster()
    return tenant:get('upstream_'.. var.__service_name__  ..'_'.. var.__tenant_name__);
end;

function _m.getAlias()
    return tenant:get('alias_'.. var.__tenant_name__);
end;

return _m;
