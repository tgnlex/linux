def get_wireless_interface():
    for line in !(nmcli device):
        dev, typ, state, conn_name = line.split(None, 3)
        if typ == 'wifi' and state == 'connected':
          return dev
