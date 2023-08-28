local binary = "10111";
local count = 0;
local sqr = 0;
for i = #binary,1,-1 do
  if ((binary):sub(i,i) == "1") then
    count = count + 2^sqr;
  end
  sqr = sqr + 1;
end
print(count);

[[ 
There are different approaches to converting binary to decimal in lua. The approach I took above was a logical breakdown and was only done to better understand converion but if you're looking
for convenience just use the following apporach:
tonumber(arguments: (string,base))
print(tonumber("10111", 2))
]]
