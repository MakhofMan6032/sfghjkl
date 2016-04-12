do
 local function save_file(name, text)
    local file = io.open("./file/"..name, "w")
    file:write(text)
    file:flush()
    file:close()
end   
function run(msg, matches)
  if matches[1] == "file" and is_sudo(msg) then
 
         local name = matches[2]
        local text = matches[3]
        return save_file(name, text)
    end
   end
return {
  patterns = {
  "^[!/](file) ([^%s]+) (.+)$"

  },
  run = run
}
end
