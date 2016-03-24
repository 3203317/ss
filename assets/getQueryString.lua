-- Copyright (C) Xin Huang (3203317@qq.com), http://www.foreworld.net.

local var = ngx.var;
local urlswitcher = require 'urlswitcher';


local query_string = "__tenant_name__=".. urlswitcher.getAlias();


--if (nil ~= var.query_string) then
--    query_string = query_string .."&".. var.query_string;
--end;


return query_string;
