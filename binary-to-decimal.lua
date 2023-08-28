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
