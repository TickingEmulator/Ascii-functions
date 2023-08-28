local base2Table = {512, 256, 128, 64, 32, 16, 8, 4, 2, 1}; -- This could be a lot more simpler with integer division but this gives you more of a breakdown proccess.
local decimal = 665;
local binary = "";
for i = 1,#base2Table do
  if (decimal >= base2Table[i]) then
    binary = binary .. "1";
    decimal = decimal - base2Table[i];
  else
    binary = binary .. "0";
  end;
end;
print(binary);
