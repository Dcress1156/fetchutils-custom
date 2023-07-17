# Search for the graphics card in the output of lspci
if lspci | grep -i -q "VGA compatible controller"
then
    # Extract the manufacturer name from the output of lspci
    manufacturer=$(lspci | grep -i "VGA compatible controller" | awk '{print $5}')

    # vars for AMD
    AMD="Advanced"
    AMD2="AMD"
  
  # check for "advanced" because AMD is dumb
  if [ "$manufacturer" = "$AMD" ]
  then
    manufacturer="$AMD2"
  fi
    # Output the manufacturer name
    echo "$manufacturer"

else
    echo "idunno"
fi
