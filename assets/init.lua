-- Copyright (C) Xin Huang (3203317@qq.com), http://www.foreworld.net.

local cjson = require 'cjson';

local file = assert(io.open('/root/my/git/3203317/ss/assets/tenant.json', 'r'));
local data = cjson.decode(file:read('*all'));
file:close();

local tenant = ngx.shared.tenant;

for key, value in pairs(data) do
    tenant:set(key, value);
end

