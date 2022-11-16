-- run git and read its output
local function git(command)
    local p = io.popen("git " .. command)
    local output = ""
    if p ~= nil then
      output = p:read('*all')
      p:close()
    end
    return output
end

-- return a table containing shortcode definitions
-- defining shortcodes this way allows us to create helper 
-- functions that are not themselves considered shortcodes 
return {
    ["git-rev"] = function(args, kwargs)
        -- An example for future use (taken from quarto docs)...
        -- local cmdArgs = ""
        -- local short = pandoc.utils.stringify(kwargs["short"])
        -- if short == "true" then cmdArgs = cmdArgs .. "--short " end

        -- run the command
        local cmd = "for-each-ref --format='%(refname:short) | %(authordate:short) | %(authorname) | %(subject)' refs/tags"
        local tags = git(cmd)

        -- return as string
        return pandoc.Str(tags)
    end
}
