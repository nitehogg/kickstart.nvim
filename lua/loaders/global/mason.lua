local mason_registry = require("mason-registry");

local packages = {
  -- ["hadolint"] = "2.12.x",
  ["sqlfmt"] = "0.23.x",
  ["vale"] = "3.7.x",
  ["jsonlint"] = "1.6.x",
  ["omnisharp"] = "1.39.x",
  ["lua-language-server"] = "3.9.x",
  ["dockerfile-language-server"] = "0.13.x",
  -- ["cspell"] = "8.13.x",
};

-- mason_registry.refresh();

local installedPackageNames = mason_registry.get_installed_package_names();

local function has_value(value)
  for i, v in ipairs(installedPackageNames)
  do
    if v == value
    then
      return true;
    end
  end

  return false;
end

for name, version in pairs(packages)
do
  if has_value(name)
  then
    goto continue;
  end

  local package = mason_registry.get_package(name);

  print("Installing " .. name .. "@" .. version .. "...");
  package.install(package, {
    version
  });

  ::continue::
end
