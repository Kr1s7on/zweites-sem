def validate_ip(ip):
    # First, split IP to four parts, split by .
    parts = ip.split('.')
    
    # Check if lenght = 4
    if len(parts) != 4:
        return False
    
    # Check if each part is a number
    for part in parts:
        if not part.isdigit():
            return False
        
        # Check if each part is between 0 and 255
        if int(part) < 0 or int(part) > 255:
            return False
        
    return True

# Call
print(validate_ip('10.0.0.256'))