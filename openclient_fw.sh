# Generated by iptables-save v1.4.7 on Tue May 26 07:16:56 2015
*nat
:PREROUTING ACCEPT [358578:33676458]
:POSTROUTING ACCEPT [52739:3255703]
:OUTPUT ACCEPT [52739:3255703]
-A PREROUTING -d 192.168.122.1/32 -i virbr0 -p tcp -m tcp --dport 445 -j REDIRECT --to-ports 1445 
-A PREROUTING -d 192.168.123.1/32 -i virbr1 -p tcp -m tcp --dport 445 -j REDIRECT --to-ports 1445 
-A POSTROUTING -s 192.168.122.0/24 ! -d 192.168.122.0/24 -p tcp -j MASQUERADE --to-ports 1024-65535 
-A POSTROUTING -s 192.168.122.0/24 ! -d 192.168.122.0/24 -p udp -j MASQUERADE --to-ports 1024-65535 
-A POSTROUTING -s 192.168.122.0/24 ! -d 192.168.122.0/24 -j MASQUERADE 
-A POSTROUTING -s 192.168.122.0/24 ! -d 192.168.122.0/24 -p tcp -j MASQUERADE --to-ports 1024-65535 
-A POSTROUTING -s 192.168.122.0/24 ! -d 192.168.122.0/24 -p udp -j MASQUERADE --to-ports 1024-65535 
-A POSTROUTING -s 192.168.122.0/24 ! -d 192.168.122.0/24 -j MASQUERADE 
-A POSTROUTING -s 192.168.123.0/24 ! -d 192.168.123.0/24 -p tcp -j MASQUERADE --to-ports 1024-65535 
-A POSTROUTING -s 192.168.123.0/24 ! -d 192.168.123.0/24 -p udp -j MASQUERADE --to-ports 1024-65535 
-A POSTROUTING -s 192.168.123.0/24 ! -d 192.168.123.0/24 -j MASQUERADE 
COMMIT
# Completed on Tue May 26 07:16:56 2015
# Generated by iptables-save v1.4.7 on Tue May 26 07:16:56 2015
*mangle
:PREROUTING ACCEPT [3750699:6216162328]
:INPUT ACCEPT [3566001:6038366190]
:FORWARD ACCEPT [183868:177719777]
:OUTPUT ACCEPT [2817825:1788134363]
:POSTROUTING ACCEPT [3001693:1965854140]
-A POSTROUTING -o virbr0 -p udp -m udp --dport 68 -j CHECKSUM --checksum-fill 
-A POSTROUTING -o virbr0 -p udp -m udp --dport 68 -j CHECKSUM --checksum-fill 
-A POSTROUTING -o virbr1 -p udp -m udp --dport 68 -j CHECKSUM --checksum-fill 
COMMIT
# Completed on Tue May 26 07:16:56 2015
# Generated by iptables-save v1.4.7 on Tue May 26 07:16:56 2015
*filter
:INPUT DROP [0:0]
:FORWARD DROP [0:0]
:OUTPUT ACCEPT [2817825:1788134363]
-A INPUT -i virbr0 -p udp -m udp --dport 53 -j ACCEPT 
-A INPUT -i virbr0 -p tcp -m tcp --dport 53 -j ACCEPT 
-A INPUT -i virbr0 -p udp -m udp --dport 67 -j ACCEPT 
-A INPUT -i virbr0 -p tcp -m tcp --dport 67 -j ACCEPT 
-A INPUT -i virbr1 -p tcp -m tcp --dport 445 -j ACCEPT 
-A INPUT -i virbr1 -p tcp -m tcp --dport 139 -j ACCEPT 
-A INPUT -i virbr1 -p udp -m udp --dport 138 -j ACCEPT 
-A INPUT -i virbr1 -p udp -m udp --dport 137 -j ACCEPT 
-A INPUT -i virbr1 -p tcp -m tcp --dport 67 -j ACCEPT 
-A INPUT -i virbr1 -p udp -m udp --dport 67 -j ACCEPT 
-A INPUT -i virbr1 -p tcp -m tcp --dport 53 -j ACCEPT 
-A INPUT -i virbr1 -p udp -m udp --dport 53 -j ACCEPT 
-A INPUT -i virbr0 -p tcp -m tcp --dport 445 -j ACCEPT 
-A INPUT -i virbr0 -p tcp -m tcp --dport 139 -j ACCEPT 
-A INPUT -i virbr0 -p udp -m udp --dport 138 -j ACCEPT 
-A INPUT -i virbr0 -p udp -m udp --dport 137 -j ACCEPT 
-A INPUT -i virbr0 -p tcp -m tcp --dport 67 -j ACCEPT 
-A INPUT -i virbr0 -p udp -m udp --dport 67 -j ACCEPT 
-A INPUT -i virbr0 -p tcp -m tcp --dport 53 -j ACCEPT 
-A INPUT -i virbr0 -p udp -m udp --dport 53 -j ACCEPT 
-A INPUT -i lo -j ACCEPT 
-A INPUT -p tcp -m state --state RELATED,ESTABLISHED -j ACCEPT 
-A INPUT -p udp -m state --state RELATED,ESTABLISHED -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 113 -j REJECT --reject-with icmp-port-unreachable 
-A INPUT -p tcp -m tcp --dport 5308 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 22 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 5900 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 5901 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 443 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 5656 -j ACCEPT 
-A INPUT -p udp -m udp --dport 5004:5005 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 5004:5005 -j ACCEPT 
-A INPUT -p udp -m udp --dport 20830 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 20830 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 5060:5062 -j ACCEPT 
-A INPUT -p udp -m udp --dport 5060:5062 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 12080 -j ACCEPT 
-A INPUT -p tcp -m state --state NEW -m tcp --dport 53 -j ACCEPT 
-A INPUT -p udp -m state --state NEW -m udp --dport 53 -j ACCEPT 
-A INPUT -p tcp -m state --state NEW -m tcp --dport 21 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 21100 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 2001 -j ACCEPT 
-A INPUT -p udp -m udp --dport 2001 -j ACCEPT 
-A INPUT -p ah -j ACCEPT 
-A INPUT -p esp -j ACCEPT 
-A INPUT -p udp -m state --state NEW -m udp --dport 500 -j ACCEPT 
-A INPUT -i ipsec+ -p 254 -j ACCEPT 
-A INPUT -p icmp -m icmp --icmp-type 3 -j ACCEPT 
-A INPUT -p icmp -m icmp --icmp-type 4 -j ACCEPT 
-A INPUT -p icmp -m icmp --icmp-type 11 -j ACCEPT 
-A INPUT -p icmp -m icmp --icmp-type 12 -j ACCEPT 
-A INPUT -p icmp -m icmp --icmp-type 9 -j ACCEPT 
-A INPUT -p icmp -m icmp --icmp-type 8 -j ACCEPT 
-A INPUT -p icmp -m icmp --icmp-type 0 -j ACCEPT 
-A INPUT -i virbr0 -p tcp -m tcp --dport 631 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 8081 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 1533 -j ACCEPT 
-A INPUT -p udp -m state --state NEW -m udp --dport 52311 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 30000:30005 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 67:68 -j DROP 
-A INPUT -p udp -m udp --dport 67:68 -j DROP 
-A INPUT -p tcp -m tcp --dport 137 -j DROP 
-A INPUT -p udp -m udp --dport 137 -j DROP 
-A INPUT -p tcp -m tcp --dport 138 -j DROP 
-A INPUT -p udp -m udp --dport 138 -j DROP 
-A INPUT -p tcp -m tcp --dport 139 -j DROP 
-A INPUT -p udp -m udp --dport 139 -j DROP 
-A INPUT -p tcp -m tcp --dport 1:20 -j DROP 
-A INPUT -p tcp -m tcp --dport 111 -j DROP 
-A INPUT -p tcp -m tcp --dport 161:162 -j DROP 
-A INPUT -p tcp -m tcp --dport 520 -j DROP 
-A INPUT -p tcp -m tcp --dport 6348:6349 -j DROP 
-A INPUT -p tcp -m tcp --dport 6345:6347 -j DROP 
-A INPUT -d 192.168.122.1/32 -i virbr0 -p tcp -m tcp --dport 445 -j ACCEPT 
-A INPUT -d 192.168.122.1/32 -i virbr0 -p tcp -m tcp --dport 1445 -j ACCEPT 
-A INPUT -d 192.168.123.1/32 -i virbr1 -p tcp -m tcp --dport 445 -j ACCEPT 
-A INPUT -d 192.168.123.1/32 -i virbr1 -p tcp -m tcp --dport 1445 -j ACCEPT 
-A INPUT -i virbr0 -p tcp -m tcp --dport 48500 -j ACCEPT 
-A INPUT -i virbr1 -p tcp -m tcp --dport 48500 -j ACCEPT 
-A INPUT -p tcp -m limit --limit 3/min -j LOG --log-prefix "FIREWALL: " --log-level 6 
-A INPUT -p udp -m limit --limit 3/min -j LOG --log-prefix "FIREWALL: " --log-level 6 
-A INPUT -j DROP 
-A FORWARD -d 192.168.122.0/24 -o virbr0 -m state --state RELATED,ESTABLISHED -j ACCEPT 
-A FORWARD -s 192.168.122.0/24 -i virbr0 -j ACCEPT 
-A FORWARD -i virbr0 -o virbr0 -j ACCEPT 
-A FORWARD -o virbr0 -j REJECT --reject-with icmp-port-unreachable 
-A FORWARD -i virbr0 -j REJECT --reject-with icmp-port-unreachable 
-A FORWARD -p tcp -m tcp --tcp-flags SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu 
-A FORWARD -d 192.168.122.0/24 -o virbr0 -m state --state RELATED,ESTABLISHED -j ACCEPT 
-A FORWARD -s 192.168.122.0/24 -i virbr0 -j ACCEPT 
-A FORWARD -i virbr0 -o virbr0 -j ACCEPT 
-A FORWARD -o virbr0 -j REJECT --reject-with icmp-port-unreachable 
-A FORWARD -i virbr0 -j REJECT --reject-with icmp-port-unreachable 
-A FORWARD -d 192.168.123.0/24 -o virbr1 -m state --state RELATED,ESTABLISHED -j ACCEPT 
-A FORWARD -s 192.168.123.0/24 -i virbr1 -j ACCEPT 
-A FORWARD -i virbr1 -o virbr1 -j ACCEPT 
-A FORWARD -o virbr1 -j REJECT --reject-with icmp-port-unreachable 
-A FORWARD -i virbr1 -j REJECT --reject-with icmp-port-unreachable 
COMMIT
# Completed on Tue May 26 07:16:56 2015
