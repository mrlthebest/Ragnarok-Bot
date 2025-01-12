local urlLoader = 'https://github.com/mrlthebest/Ragnarok-Bot/raw/refs/heads/main/ragnarokLoader.lua';
do
    if not loadRemoteScript or type(loadRemoteScript) ~= 'function' then
        HTTP.download(urlLoader , 'loader.lua', function(path, checksum, err)
            if (err) then
                warn(err);
                return;
            end
            local content = g_resources.readFileContents('/downloads/' .. path);
            loadstring(content)();
            return;
        end);
    end
    loadRemoteScript(urlLoader);
end
