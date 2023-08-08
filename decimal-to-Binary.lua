local binarySequence = {};
local base2Table = {512, 256, 128, 64, 32, 16, 8, 4, 2, 1}; -- This table only goes up to 1023 meaning that's the limit for your decimal integer.
local decimal = "0d665";
function decimalToBinary(decimal)
  local decimalParse = (decimal):gsub("0d","");
  local decimalInteger = tonumber(decimalParse);
  for i = 1,#base2Table do
    if (decimalInteger >= base2Table[i]) then
     binarySequence[i] = 1;
     decimalInteger = decimalInteger - base2Table[i];
    else
      binarySequence[i] = 0;
    end;
  end;
  local combinedInteger = "";
  for i2  = 1,#binarySequence do
    combinedInteger = combinedInteger..binarySequence[i2];
  end;
  return combinedInteger;
end;

print(decimalToBinary(decimal));

