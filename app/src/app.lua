local lapis = require "lapis"
local app = lapis.Application()

-- Define a basic pattern that matches /
app:match("/", function(self)
    local profile_url = self:url_for("profile", {name = "josh"})
    -- Use inline HTML helper to quickly write a template
    return self:html(function()
        h2("Welcome!")
        text("Go to my ")
        a({href = profile_url}, "profile")
    end)
end)

-- Define a named route pattern with a variable called name
app:match("profile", "/:name", function(self)
    return self:html(function()
        div({class = "profile"},
            "Welcome to the profile of " .. self.params.name)
    end)
end)

return app