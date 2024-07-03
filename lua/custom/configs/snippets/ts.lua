local ls = require('luasnip');

local s = ls.snippet;
local t = ls.text_node;
print('snippets')
return {
  s('debug', t('console.log("!!DEBUG!!", "")')),
};
