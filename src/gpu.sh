# Search for the graphics card in the output of lspci
if lspci | grep -i -q "VGA compatible controller"
then
    # Extract the manufacturer name from the output of lspci
    manufacturer=$(lspci | grep -i "VGA compatible controller" | awk '{print $5}')
    
    # Output the manufacturer name
    echo "$manufacturer"
else
    echo "idunno"
fi
