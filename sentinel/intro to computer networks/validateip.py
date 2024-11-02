def validate_ipv(ip):
    octets = ip.split('.')
    if len(octets) != 4:
        return False
    for octet in octets:
        if not octet.isdigit():
            return False
        if int(octet) < 0 or int(octet) > 255:
            return False
    return True

# Test the function
print(validate_ipv('192.168.1.12'))