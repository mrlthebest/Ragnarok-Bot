local urlLoader = 'https://raw.githubusercontent.com/mrlthebest/Ragnarok-Bot/refs/heads/main/ragnarokLoader.lua'
do
    if not loadRemoteScript or type(loadRemoteScript) ~= 'function' then
        modules._G.HTTP.get(urlLoader, function(script)
            (loadstring(script))()
        end)
    end
    loadRemoteScript(urlLoader);
end
