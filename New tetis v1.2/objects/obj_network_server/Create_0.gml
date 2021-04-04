type = network_socket_tcp
port = 6926

server = network_create_server(type, port, 1);
socket = noone
if server < 0{
    show_debug_message("connection error")
    }