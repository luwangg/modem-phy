function toggleDebugBlocks(modelname,turnOn)

% toggleDebugBlocks(bdroot,true)

keywords = {'DEBUG'}; % not case sensitive

for block = keywords
    scopes = find_system(modelname,'CaseSensitive','off',...
        'regexp','on','LookUnderMasks','all',...
        'IncludeCommented','on','Name',block{:});
    for scope = 1:length(scopes)
        if ~turnOn
            set_param(scopes{scope},'Commented','on')
        else
            set_param(scopes{scope},'Commented','off')
        end
    end
end

