$TTL    1
@	IN      SOA     ns.maria-verdonck.sb.uclllabs.be. admin.maria-verdonck.sb.uclllabs.be. (
                          3         ; Serial
                          3h       ; Refresh after 3 hours
                          1h       ; Retry after 1 hour
                          1w       ; Expire after 1 week
                          1h )     ; Negative caching TTL of 1 day
;

; NS records
	IN	NS	ns.maria.verdonck.sb.uclllabs.be.
	IN	NS	ns1.uclllabs.be.
	IN	NS	ns2.uclllabs.be.

; A records
ns.maria-verdonck.sb.uclllabs.be.		IN	A	193.191.177.222
ns.maria-verdonck.sb.uclllabs.be.		IN	AAAA	fe80::e0ad:2ff:fe92:66c4
maria-verdonck.sb.uclllabs.be.		IN      A       193.191.177.222
maria-verdonck.sb.uclllabs.be.		IN	AAAA	fe80::e0ad:2ff:fe92:66c4
www					IN	A	193.191.177.222
www1					IN	A	193.191.177.222
www2					IN	A	193.191.177.222
ns1.uclllabs.be.			IN      A       193.191.176.254
ns1.uclllabs.be.			IN	AAAA	2001:6A8:2880:A020::FE
ns2.uclllabs.be.			IN      A       193.191.177.4
ns2.uclllabs.be.			IN	AAAA	2001:6A8:2880:A021::4


; PTR records
177.222	IN	PTR	ns.maria-verdonck.sb.uclllabs.be.	;193.191.177.222
176.254	IN	PTR	ns1.uclllabs.be.			;193.191.176.254
177.4	IN	PTR	ns2.uclllabs.be.			;193.191.177.4
177.254	IN      PTR	test.maria-verdonck.sb.uclllabs.be.	;193.191.177.254	
