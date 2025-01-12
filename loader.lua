local newVersion = 'https://raw.githubusercontent.com/mrlthebest/Ragnarok-Bot/refs/heads/main/ragnarokLoader20100.lua'; -- 20100 LuaJit
local oldVersion = 'https://raw.githubusercontent.com/mrlthebest/Ragnarok-Bot/refs/heads/main/ragnarokLoader20005.lua'; -- 20005 LuaJit
local urlLoader;
if modules._G.jit.version_num < 20100 then
    urlLoader = oldVersion;
else
    urlLoader = newVersion;
end
print(urlLoader .. ' - Version loaded');
do
    if not loadRemoteScript or type(loadRemoteScript) ~= 'function' then
        modules._G.HTTP.get(urlLoader, function(script)
            (loadstring(script))();
        end);
    end
    loadRemoteScript(urlLoader);
end
