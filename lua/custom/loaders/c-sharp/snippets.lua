local ls = require("luasnip");

local s = ls.snippet;
local t = ls.text_node;
local i = ls.insert_node;

ls.add_snippets("cs", {
  s("$debug", {
    t("Console.WriteLine(String.Join(\"!!debug!!\", "),
    i(1, "param"),
    t("));")
  }),
});
