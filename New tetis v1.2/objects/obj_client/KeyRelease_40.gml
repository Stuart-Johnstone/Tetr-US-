buffer = buffer_create(1024,buffer_fixed,2)
buffer_seek(buffer,buffer_seek_start,0)
buffer_write(buffer,buffer_u8,4)
network_send_packet(client_socket,buffer,buffer_tell(buffer))