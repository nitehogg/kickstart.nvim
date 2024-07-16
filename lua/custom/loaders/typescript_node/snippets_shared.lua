local ls = require("luasnip");

local s = ls.snippet;
local t = ls.text_node;
local i = ls.insert_node;

return {
  debug = s("$debug", {
    t("console.log('!!debug!!', '"),
    i(1, "param"),
    t("');")
  }),
};
