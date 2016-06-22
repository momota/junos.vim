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

syn keyword junosKeyword    class user link-mode port-mode speed address route nat policy vlan-id
syn keyword junosKeyword    source-address destination-address source-port destination-port
syn keyword junosKeyword    static filter term routing-instances routing-engine line-card next-hop storm-control
syn keyword junosKeyword    redundancy-group cluster vrrp-group virtual-router
syn keyword junosKeyword    alg log login
syn match   junosKeyword    /interfaces\=/
syn match   junosKeyword    /vlans\=/
syn match   junosKeyword    /members\=/
syn match   junosKeyword    /\(security\-\)\?zones\=/
syn match   junosKeyword    /protocols\=/
syn match   junosKeyword    /applications\=/

syn keyword junosProtocol   ip ipv6 inet inet6 tcp udp
syn keyword junosProtocol   snmp ntp syslog ssh ftp ftp-data dns sql
syn keyword junosProtocol   bgp ospf ospf3 rip ripng isis
syn keyword junosProtocol   igmp igmp-snooping lldp lldp-med mld mld-snooping msdp mstp mvrp mpls vrrp lacp
syn keyword junosProtocol   stp sflow vstp dot1x msrp msrpc sunrpc icmp ping pim rstp rsvp netconf
syn keyword junosProtocol   junos-http junos-https junos-ftp junos-ssh junos-icmp-all junos-ntp junos-smtp
syn keyword junosProtocol   junos-udp junos-telnet junos-bgp junos-syslog
syn match   junosProtocol   /\s802\.3ad\s/
syn match   junosProtocol   /\s802\.1Q\s/

syn keyword junosAction     any deny permit accept reject discard disable enable

syn keyword junosConfigure  set delete rename insert request show
syn keyword junosConfigure  100m 1g 10g trunk access
syn keyword junosConfigure  full-duplex automatic auto-negotiation input output

syn keyword junosFunction   id host host-name
syn match   junosFunction   /[a-z]\+:[-a-z]\+/
syn match   junosFunction   /unit\s[0-9]\+/
syn match   junosFunction   /vlan\.[0-9]\+/
syn match   junosFunction   /node[0-9]\+/

syn match   junosComment    "description.*$"
syn match   junosComment    "\s*#.*$"
syn region  junosComment    contained start='/*' end='*/'

syn match   junosString     "\"[^"]*\""
syn match   junosVar        "\$\<[-_a-zA-Z0-9]*\>"
syn match   junosVar        /\d\+/

syn keyword junosInterface  lo0
syn match   junosInterface  "\(xe\|ge\|vcp\)\-[0-9]\+\/[0-9]\+\/[0-9]\+\(\|\n\|\s\|\.[0-9]\+\)"
syn match   junosInterface  "ae[0-9]\+\(\|\n\|\s\|\.[0-9]\+\)"
syn match   junosInterface  "reth[0-9]\+\(\|\n\|\s\|\.[0-9]\+\)"
syn match   junosInterface  "fab[0-9]\+\(\|\n\|\s\|\.[0-9]\+\)"
syn match   junosInterface  "vcp\-[0-9]\+\(\|\n\|\s\|\.[0-9]\+\)"
syn match   junosInterface  "virtual\-chassis"
syn match   junosInterface  "vlan\sunit\s[0-9]\+"

" IPv4: complex version
syn match   junosIpv4       /\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}/
syn match   junosIpv4       /\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\/[0-9]\{1,2\}/


hi link junosKeyword        Statement
hi link junosInterface      Underlined
hi link junosProtocol       Type
hi link junosAction         Error
hi link junosFunction       Function
hi link junosLabel          Identifier
hi link junosCond           Type
hi link junosComment        Comment
hi link junosString         String
hi link junosVar            Identifier
hi link junosConfigure      Function
hi link junosDef            String
hi link junosIpv4           Underlined

let b:current_syntax = "junos"
