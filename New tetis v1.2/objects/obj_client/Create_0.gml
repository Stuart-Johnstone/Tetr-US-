///initalize client
client_socket = network_create_socket(network_socket_tcp);
server = network_connect(client_socket , "10.209.17.189", 6926);
if server < 0{
    show_debug_message("connection error")
    }