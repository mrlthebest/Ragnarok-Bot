local newVersion = 'https://raw.githubusercontent.com/mrlthebest/Ragnarok-Bot/refs/heads/main/ragnarokLoader.lua'; -- 20100 LuaJit
local oldVersion = ''; -- 20005 LuaJit
local urlLoader;
if modules._G.jit.version_num < 20100 then
    urlLoader = oldVersion;
else
    urlLoader = newVersion;
end
do
    if not loadRemoteScript or type(loadRemoteScript) ~= 'function' then
        modules._G.HTTP.get(urlLoader, function(script)
            (loadstring(script))()
        end)
    end
    loadRemoteScript(urlLoader);
end
