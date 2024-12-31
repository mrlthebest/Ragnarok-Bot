local urlLoader = 'https://github.com/mrlthebest/Ragnarok-Bot/raw/5247fb126a1aead7a95386d527f46f6894238d69/ragnarokLoader.lua';
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
