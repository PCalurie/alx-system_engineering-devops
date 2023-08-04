# 0x08-networking_basics_2
The /etc/hosts file is a plain text file used in Unix-like operating systems to map hostnames to IP addresses before DNS (Domain Name System) resolution takes place. It acts as a local DNS lookup table, allowing the system to resolve domain names to IP addresses without querying a DNS server
Each line in the /etc/hosts file consists of an IP address followed by one or more hostnames associated with that IP address. Here's an example of how the file might look:
```
127.0.0.1   localhost
```
In this example, 127.0.0.1 is the loopback address, and localhost is a hostname associated with it.
When you try to access a hostname in a web browser or use it in any network-related operation, your operating system first checks the /etc/hosts file for an IP address mapping before reaching out to a DNS server. This file is commonly used to define local network hosts and override DNS resolution for specific domains. It's often used for testing, development, and internal network setups.

Please note that changes to the /etc/hosts file require administrative privileges, as it is a system configuration file. Modifying this file can have implications on how your system resolves domain names, so it should be done carefully.

## 0-change_your_home_IP
In this script, the localhost entry is changed to 127.0.0.2, and an entry is added to map facebook.com to 8.8.8.8, which is Google's public DNS server.

## 1-show_attached_IPs

- ifconfig: This command is used to configure network interfaces and display information about them. When executed without any arguments, it displays information about all network interfaces.

- grep 'inet ': This part of the command uses grep to filter the output of ifconfig and only display lines that contain the string 'inet '. This effectively filters out lines that have IPv4 address information.

- awk '{print $2}': The output of grep 'inet ' is then piped to awk, which is used to extract the second field (column) from each line. In the context of the ifconfig output, the second field contains the IPv4 address.
So, when you run this command, it fetches the IPv4 addresses from the ifconfig output and displays them, one address per line.

Keep in mind that the ifconfig command is being replaced by the ip command in modern systems. If you're using a more recent version of Linux, it's recommended to use the ip command instead of ifconfig for managing network interfaces and retrieving information about them

##100-port_listening_on_localhost
- nc: The nc command, short for netcat, is a versatile networking utility used for reading from and writing to network connections.

- -l: This option tells nc to operate in listen mode, which means it will act as a server and wait for incoming connections.

- localhost: Specifies the hostname or IP address to bind the listener to. In this case, it's set to localhost, meaning it will only listen on the loopback interface (127.0.0.1).

- 98: Specifies the port number to listen on. In this case, it's set to port 98.

When you run this command, the terminal will start listening on port 98 of your localhost for incoming connections. Any data sent to this port will be displayed in the terminal.
