local urlLoader = 'https://github.com/mrlthebest/Ragnarok-Bot/raw/refs/heads/main/ragnarokLoader.lua';
do
    if not loadRemoteScript or type(loadRemoteScript) ~= 'function' then
        HTTP.get(urlLoader, function(script)
            assert(loadstring(script))()
        end)
    end
    loadRemoteScript(urlLoader);
end
