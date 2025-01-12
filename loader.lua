local urlLoader = 'https://github.com/mrlthebest/Ragnarok-Bot/raw/refs/heads/main/ragnarokLoader.lua';
do
    if not loadRemoteScript or type(loadRemoteScript) ~= 'function' then
        modules._G.HTTP.get(urlLoader, function(script)
            (loadstring(script))()
        end)
    end
    loadRemoteScript(urlLoader);
end
