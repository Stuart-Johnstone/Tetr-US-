buffer = buffer_create(1024,buffer_fixed,1)
buffer_seek(buffer,buffer_seek_start,0)
buffer_write(buffer,buffer_u8,3)
network_send_packet(client_socket,buffer,buffer_tell(buffer))