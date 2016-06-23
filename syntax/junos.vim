" Vim syntax file
" Language: junos
" Maintainer: Makoto Momota <makoto.momota@gmail.com>

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-
setlocal iskeyword+=_

syn match   junosDef        /\s\u\S\+/

syn keyword junosCond       if else for-each
syn keyword junosCond       to-zone from-zone match then from to match

syn keyword junosLabel      system chassis firewall security rule rule-set pool

syn keyword junosKeyword    version server class user address route nat policy vlan-id mtu
syn keyword junosKeyword    filter term routing-instances routing-engine line-card next-hop
syn keyword junosKeyword    cluster vrrp-group security-zone encapsulation storm-control
syn keyword junosKeyword    alg log login node zone path community
syn match   junosKeyword    /interfaces\?/
syn match   junosKeyword    /vlans\?/
syn match   junosKeyword    /members\?/
syn match   junosKeyword    /applications\?/

syn keyword junosProtocol   ip ipv6 inet inet6 tcp udp
syn keyword junosProtocol   snmp snmptrap ntp syslog ssh ftp ftp-data dns sql
syn keyword junosProtocol   ospf ospf3 rip ripng isis
syn keyword junosProtocol   igmp igmp-snooping lldp lldp-med mld mld-snooping msdp mstp mvrp mpls vpls vrrp lacp
syn keyword junosProtocol   stp sflow vstp dot1x msrp msrpc sunrpc icmp ping pim rstp rsvp netconf
syn match   junosProtocol   /[ie]\?bgp/
syn match   junosProtocol   /https\?/
syn match   junosProtocol   /\s802\.3ad\s/
syn match   junosProtocol   /\s802\.1Q\s/
" junos protocol like follows:
"  junos-http junos-https junos-ftp junos-ssh junos-icmp-all junos-ntp junos-smtp
"  junos-udp junos-telnet junos-bgp junos-syslog junos-rsh junos-nfs junos-nfsd-udp junos-nfsd-tcp
syn match   junosProtocol   /\sjunos\-[\-a-z]\+/

syn keyword junosAction     any deny permit accept reject discard disable enable

syn keyword junosConfigure  set delete rename insert request show
syn keyword junosConfigure  trunk access static track standby
syn keyword junosConfigure  full-duplex automatic auto-negotiation input output
syn keyword junosConfigure  prefer active passive
syn keyword junosConfigure  link-mode port-mode speed queue
syn match   junosConfigure  /\s\d\+[gm]/

syn keyword junosFunction   redundancy-group screen policies flow zones vrf virtual-router
syn keyword junosFunction   id host host-name priority weight port protocol
syn keyword junosFunction   source-address destination-address source-port destination-port
syn keyword junosFunction   import export source destination
syn keyword junosFunction   primary secondary neighbor
syn match   junosFunction   /groups\?/
syn match   junosFunction   /protocols\?/
syn match   junosFunction   /unit\s[0-9]\+/
syn match   junosFunction   /vlan\.[0-9]\+/
syn match   junosFunction   /node[0-9]\+/

syn match   junosComment    /description.*$/
syn match   junosComment    /\s*#.*$/
syn region  junosComment    contained start='/*' end='*/'

syn match   junosString     /\"[^"]*\"/

syn keyword junosVar        low high
syn match   junosVar        /\d\+/

syn keyword junosInterface  vme
syn match   junosInterface  /\(xe\|ge\|vcp\|gr\)\-[0-9]\+\/[0-9]\+\/[0-9]\+\(\|\n\|\s\|\.[0-9]\+\)/
syn match   junosInterface  /\(ae\|reth\|fab\|vcp\|lo\)[0-9]\+\(\|\n\|\s\|\.[0-9]\+\)/
syn match   junosInterface  /virtual\-chassis/
syn match   junosInterface  /vlan\sunit\s[0-9]\+/

" IPv4
syn match   junosIpv4       /\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\(\/[0-9]\{1,2\}\)\?/


hi link junosKeyword        Statement
hi link junosInterface      Underlined
hi link junosProtocol       Type
hi link junosAction         Error
hi link junosFunction       Function
hi link junosLabel          Identifier
hi link junosCond           Type
hi link junosComment        Comment
hi link junosString         String
hi link junosVar            String
hi link junosConfigure      Function
hi link junosDef            String
hi link junosIpv4           Underlined

let b:current_syntax = "junos"
