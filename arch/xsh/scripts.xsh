def greet(args):
    """Standard greeter function"""
    print("Welcome", args)

def get_wifi():
    """ Return active wireless interface"""
    for line in !(nmcli device):
        dev, typ, state, conn_name = line.split(None, 3)
        if typ == 'wifi' and state == 'connected':
            return dev
