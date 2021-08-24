INSERT INTO `users` (`id`, `user`, `name`, `password`)
VALUES (1, 'admin', 'Administrator', PASSWORD('admin'));
INSERT INTO `views` (`id`, `view`, `rule`)
VALUES (1, 'Public', '0.0.0.0/0');
INSERT INTO `views` (`id`, `view`, `rule`)
VALUES (
        2,
        'Private',
        '10.0.0.0/8 172.16.0.0/12 192.168.0.0/16'
    );
INSERT INTO `domains` (`id`, `domain`)
VALUES (1, 'example.com');
INSERT INTO `domains` (`id`, `domain`)
VALUES (2, 'example.net');
INSERT INTO `domains` (`id`, `domain`)
VALUES (3, 'example.org');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (1, 1, 'example.com');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (2, 1, 'mail1.example.com');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (3, 1, 'mail2.example.com');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (4, 1, 'mail3.example.com');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (5, 1, 'm.example.com');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (6, 1, 'mobile.example.com');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (7, 1, 'ns1.example.com');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (8, 1, 'ns2.example.com');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (9, 1, 'ns3.example.com');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (10, 1, 'ns4.example.com');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (11, 1, 'sip.example.com');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (12, 1, '_sip._tcp.example.com');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (13, 1, 'www.example.com');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (14, 2, 'example.net');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (15, 2, 'mail1.example.net');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (16, 2, 'mail2.example.net');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (17, 2, 'mail3.example.net');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (18, 2, 'm.example.net');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (19, 2, 'mobile.example.net');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (20, 2, 'ns1.example.net');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (21, 2, 'ns2.example.net');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (22, 2, 'ns3.example.net');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (23, 2, 'ns4.example.net');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (24, 2, 'sip.example.net');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (25, 2, '_sip._tcp.example.net');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (26, 2, 'www.example.net');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (27, 3, 'example.org');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (28, 3, 'mail1.example.org');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (29, 3, 'mail2.example.org');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (30, 3, 'mail3.example.org');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (31, 3, 'm.example.org');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (32, 3, 'mobile.example.org');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (33, 3, 'ns1.example.org');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (34, 3, 'ns2.example.org');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (35, 3, 'ns3.example.org');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (36, 3, 'ns4.example.org');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (37, 3, 'sip.example.org');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (38, 3, '_sip._tcp.example.org');
INSERT INTO `names` (`id`, `domain_id`, `name`)
VALUES (39, 3, 'www.example.org');
INSERT INTO `types` (`value`, `type`, `description`)
VALUES (1, 'A', 'Address record');
INSERT INTO `types` (`value`, `type`, `description`)
VALUES (2, 'NS', 'Name server record');
INSERT INTO `types` (`value`, `type`, `description`)
VALUES (5, 'CNAME', 'Canonical name record');
INSERT INTO `types` (`value`, `type`, `description`)
VALUES (6, 'SOA', 'Start of authority record');
INSERT INTO `types` (`value`, `type`, `description`)
VALUES (12, 'PTR', 'Pointer record');
INSERT INTO `types` (`value`, `type`, `description`)
VALUES (15, 'MX', 'Mail exchange record');
INSERT INTO `types` (`value`, `type`, `description`)
VALUES (16, 'TXT', 'Text record');
INSERT INTO `types` (`value`, `type`, `description`)
VALUES (28, 'AAAA', 'IPv6 address record');
INSERT INTO `types` (`value`, `type`, `description`)
VALUES (33, 'SRV', 'Service record');
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (1, 1, 6, 86400);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (2, 1, 2, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (3, 7, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (4, 8, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (5, 9, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (6, 10, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (7, 7, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (8, 8, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (9, 9, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (10, 10, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (11, 1, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (12, 1, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (13, 13, 5, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (14, 5, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (15, 5, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (16, 6, 5, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (17, 1, 15, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (18, 1, 16, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (19, 2, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (20, 3, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (21, 4, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (22, 2, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (23, 3, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (24, 4, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (25, 12, 33, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (26, 11, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (27, 11, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (28, 14, 6, 86400);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (29, 14, 2, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (30, 20, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (31, 21, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (32, 22, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (33, 23, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (34, 20, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (35, 21, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (36, 22, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (37, 23, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (38, 14, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (39, 14, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (40, 26, 5, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (41, 18, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (42, 18, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (43, 19, 5, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (44, 14, 15, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (45, 14, 16, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (46, 15, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (47, 16, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (48, 17, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (49, 15, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (50, 16, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (51, 17, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (52, 25, 33, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (53, 24, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (54, 24, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (55, 27, 6, 86400);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (56, 27, 2, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (57, 33, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (58, 34, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (59, 35, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (60, 36, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (61, 33, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (62, 34, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (63, 35, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (64, 36, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (65, 27, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (66, 27, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (67, 39, 5, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (68, 31, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (69, 31, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (70, 32, 5, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (71, 27, 15, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (72, 27, 16, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (73, 28, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (74, 29, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (75, 30, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (76, 28, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (77, 29, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (78, 30, 28, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (79, 38, 33, 3600);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (80, 37, 1, 300);
INSERT INTO `names_types` (`id`, `name_id`, `type_value`, `ttl`)
VALUES (81, 37, 28, 300);
INSERT INTO `contents` (`id`, `content`)
VALUES (
        1,
        'ns1.example.com. hostmaster.example.com. 2016010101 21600 3600 1209600 300'
    );
INSERT INTO `contents` (`id`, `content`)
VALUES (2, 'ns1.example.com');
INSERT INTO `contents` (`id`, `content`)
VALUES (3, 'ns2.example.com');
INSERT INTO `contents` (`id`, `content`)
VALUES (4, 'ns3.example.com');
INSERT INTO `contents` (`id`, `content`)
VALUES (5, 'ns4.example.com');
INSERT INTO `contents` (`id`, `content`)
VALUES (6, 'example.com');
INSERT INTO `contents` (`id`, `content`)
VALUES (7, 'm.example.com');
INSERT INTO `contents` (`id`, `content`)
VALUES (8, '10 mail1.example.com');
INSERT INTO `contents` (`id`, `content`)
VALUES (9, '20 mail2.example.com');
INSERT INTO `contents` (`id`, `content`)
VALUES (10, '30 mail3.example.com');
INSERT INTO `contents` (`id`, `content`)
VALUES (11, '10 100 5060 sip.example.com');
INSERT INTO `contents` (`id`, `content`)
VALUES (
        12,
        'ns1.example.net. hostmaster.example.net. 2016010101 21600 3600 1209600 300'
    );
INSERT INTO `contents` (`id`, `content`)
VALUES (13, 'ns1.example.net');
INSERT INTO `contents` (`id`, `content`)
VALUES (14, 'ns2.example.net');
INSERT INTO `contents` (`id`, `content`)
VALUES (15, 'ns3.example.net');
INSERT INTO `contents` (`id`, `content`)
VALUES (16, 'ns4.example.net');
INSERT INTO `contents` (`id`, `content`)
VALUES (17, 'example.net');
INSERT INTO `contents` (`id`, `content`)
VALUES (18, 'm.example.net');
INSERT INTO `contents` (`id`, `content`)
VALUES (19, '10 mail1.example.net');
INSERT INTO `contents` (`id`, `content`)
VALUES (20, '20 mail2.example.net');
INSERT INTO `contents` (`id`, `content`)
VALUES (21, '30 mail3.example.net');
INSERT INTO `contents` (`id`, `content`)
VALUES (22, '10 100 5060 sip.example.net');
INSERT INTO `contents` (`id`, `content`)
VALUES (
        23,
        'ns1.example.org. hostmaster.example.org. 2016010101 21600 3600 1209600 300'
    );
INSERT INTO `contents` (`id`, `content`)
VALUES (24, 'ns1.example.org');
INSERT INTO `contents` (`id`, `content`)
VALUES (25, 'ns2.example.org');
INSERT INTO `contents` (`id`, `content`)
VALUES (26, 'ns3.example.org');
INSERT INTO `contents` (`id`, `content`)
VALUES (27, 'ns4.example.org');
INSERT INTO `contents` (`id`, `content`)
VALUES (28, 'example.org');
INSERT INTO `contents` (`id`, `content`)
VALUES (29, 'm.example.org');
INSERT INTO `contents` (`id`, `content`)
VALUES (30, '10 mail1.example.org');
INSERT INTO `contents` (`id`, `content`)
VALUES (31, '20 mail2.example.org');
INSERT INTO `contents` (`id`, `content`)
VALUES (32, '30 mail3.example.org');
INSERT INTO `contents` (`id`, `content`)
VALUES (33, '10 100 5060 sip.example.org');
INSERT INTO `contents` (`id`, `content`)
VALUES (34, 'v=spf1 ip4:192.0.2.0/24 2001:db8::/32 ~all');
INSERT INTO `contents` (`id`, `content`)
VALUES (35, '192.0.2.1');
INSERT INTO `contents` (`id`, `content`)
VALUES (36, '192.0.2.2');
INSERT INTO `contents` (`id`, `content`)
VALUES (37, '192.0.2.3');
INSERT INTO `contents` (`id`, `content`)
VALUES (38, '192.0.2.4');
INSERT INTO `contents` (`id`, `content`)
VALUES (39, '192.0.2.10');
INSERT INTO `contents` (`id`, `content`)
VALUES (40, '192.0.2.20');
INSERT INTO `contents` (`id`, `content`)
VALUES (41, '192.0.2.30');
INSERT INTO `contents` (`id`, `content`)
VALUES (42, '192.0.2.40');
INSERT INTO `contents` (`id`, `content`)
VALUES (43, '192.0.2.101');
INSERT INTO `contents` (`id`, `content`)
VALUES (44, '192.0.2.102');
INSERT INTO `contents` (`id`, `content`)
VALUES (45, '192.0.2.103');
INSERT INTO `contents` (`id`, `content`)
VALUES (46, '192.0.2.104');
INSERT INTO `contents` (`id`, `content`)
VALUES (47, '192.0.2.201');
INSERT INTO `contents` (`id`, `content`)
VALUES (48, '192.0.2.202');
INSERT INTO `contents` (`id`, `content`)
VALUES (49, '192.0.2.203');
INSERT INTO `contents` (`id`, `content`)
VALUES (50, '192.0.2.204');
INSERT INTO `contents` (`id`, `content`)
VALUES (51, '2001:db8::1');
INSERT INTO `contents` (`id`, `content`)
VALUES (52, '2001:db8::2');
INSERT INTO `contents` (`id`, `content`)
VALUES (53, '2001:db8::3');
INSERT INTO `contents` (`id`, `content`)
VALUES (54, '2001:db8::4');
INSERT INTO `contents` (`id`, `content`)
VALUES (55, '2001:db8::10');
INSERT INTO `contents` (`id`, `content`)
VALUES (56, '2001:db8::20');
INSERT INTO `contents` (`id`, `content`)
VALUES (57, '2001:db8::30');
INSERT INTO `contents` (`id`, `content`)
VALUES (58, '2001:db8::40');
INSERT INTO `contents` (`id`, `content`)
VALUES (59, '2001:db8::101');
INSERT INTO `contents` (`id`, `content`)
VALUES (60, '2001:db8::102');
INSERT INTO `contents` (`id`, `content`)
VALUES (61, '2001:db8::103');
INSERT INTO `contents` (`id`, `content`)
VALUES (62, '2001:db8::104');
INSERT INTO `contents` (`id`, `content`)
VALUES (63, '2001:db8::201');
INSERT INTO `contents` (`id`, `content`)
VALUES (64, '2001:db8::202');
INSERT INTO `contents` (`id`, `content`)
VALUES (65, '2001:db8::203');
INSERT INTO `contents` (`id`, `content`)
VALUES (66, '2001:db8::204');
INSERT INTO `monitors` (`id`, `monitor`, `monitor_json`)
VALUES (1, 'No check', '{"type": ""}');
INSERT INTO `monitors` (`id`, `monitor`, `monitor_json`)
VALUES (
        2,
        'Command execution',
        '{"type": "exec", "args": ["/etc/powergslb/powergslb-check", "%(content)s"], "interval": 3, "timeout": 1, "fall": 3, "rise": 5}'
    );
INSERT INTO `monitors` (`id`, `monitor`, `monitor_json`)
VALUES (
        3,
        'ICMP ping',
        '{"type": "icmp", "ip": "%(content)s", "interval": 3, "timeout": 1, "fall": 3, "rise": 5}'
    );
INSERT INTO `monitors` (`id`, `monitor`, `monitor_json`)
VALUES (
        4,
        'HTTP request /status',
        '{"type": "http", "url": "http://%(content)s/status", "interval": 3, "timeout": 1, "fall": 3, "rise": 5}'
    );
INSERT INTO `monitors` (`id`, `monitor`, `monitor_json`)
VALUES (
        5,
        'TCP connect to port 80',
        '{"type": "tcp", "ip": "%(content)s", "port": 80, "interval": 3, "timeout": 1, "fall": 3, "rise": 5}'
    );
INSERT INTO `monitors` (`id`, `monitor`, `monitor_json`)
VALUES (
        6,
        'TCP connect to port 443',
        '{"type": "tcp", "ip": "%(content)s", "port": 443, "interval": 3, "timeout": 1, "fall": 3, "rise": 5}'
    );
INSERT INTO `monitors` (`id`, `monitor`, `monitor_json`)
VALUES (
        7,
        'Load Balancing Check',
        '{"type": "exec", "args": ["/etc/powergslb/load-balancing-check", "%(content)s", "8600"], "interval": 1800, "timeout": 1, "fall": 3, "rise": 5}'
    );
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (1, 1, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (2, 2, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (3, 3, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (4, 4, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (5, 5, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (6, 6, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (7, 7, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (8, 8, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (9, 9, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (10, 10, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (11, 11, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (12, 12, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (13, 13, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (14, 14, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (15, 15, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (16, 16, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (17, 17, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (18, 18, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (19, 19, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (20, 20, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (21, 21, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (22, 22, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (23, 23, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (24, 24, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (25, 25, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (26, 26, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (27, 27, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (28, 28, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (29, 29, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (30, 30, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (31, 31, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (32, 32, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (33, 33, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (34, 34, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (35, 35, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (36, 36, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (37, 37, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (38, 38, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (39, 39, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (40, 40, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (41, 41, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (42, 42, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (43, 43, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (44, 44, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (45, 45, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (46, 46, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (47, 47, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (48, 48, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (49, 49, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (50, 50, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (51, 51, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (52, 52, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (53, 53, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (54, 54, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (55, 55, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (56, 56, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (57, 57, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (58, 58, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (59, 59, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (60, 60, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (61, 61, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (62, 62, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (63, 63, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (64, 64, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (65, 65, 1);
INSERT INTO `contents_monitors` (`id`, `content_id`, `monitor_id`)
VALUES (66, 66, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (1, 1, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (2, 2, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (2, 3, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (2, 4, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (2, 5, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (3, 35, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (4, 36, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (5, 37, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (6, 38, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (7, 51, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (8, 52, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (9, 53, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (10, 54, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (11, 43, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (11, 44, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (11, 45, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (11, 46, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (12, 59, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (12, 60, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (12, 61, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (12, 62, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (13, 6, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (14, 47, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (14, 48, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (14, 49, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (14, 50, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (15, 63, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (15, 64, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (15, 65, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (15, 66, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (16, 7, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (17, 8, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (17, 9, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (17, 10, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (18, 34, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (19, 39, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (20, 40, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (21, 41, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (22, 55, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (23, 56, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (24, 57, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (25, 11, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (26, 42, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (27, 58, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (28, 12, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (29, 13, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (29, 14, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (29, 15, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (29, 16, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (30, 35, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (31, 36, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (32, 37, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (33, 38, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (34, 51, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (35, 52, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (36, 53, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (37, 54, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (38, 43, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (38, 44, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (38, 45, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (38, 46, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (39, 59, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (39, 60, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (39, 61, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (39, 62, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (40, 17, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (41, 47, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (41, 48, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (41, 49, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (41, 50, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (42, 63, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (42, 64, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (42, 65, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (42, 66, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (43, 18, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (44, 19, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (44, 20, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (44, 21, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (45, 34, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (46, 39, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (47, 40, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (48, 41, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (49, 55, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (50, 56, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (51, 57, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (52, 22, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (53, 42, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (54, 58, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (55, 23, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (56, 24, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (56, 25, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (56, 26, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (56, 27, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (57, 35, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (58, 36, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (59, 37, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (60, 38, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (61, 51, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (62, 52, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (63, 53, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (64, 54, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (65, 43, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (65, 44, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (65, 45, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (65, 46, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (66, 59, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (66, 60, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (66, 61, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (66, 62, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (67, 28, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (68, 47, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (68, 48, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (68, 49, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (68, 50, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (69, 63, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (69, 64, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (69, 65, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (69, 66, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (70, 29, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (71, 30, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (71, 31, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (71, 32, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (72, 34, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (73, 39, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (74, 40, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (75, 41, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (76, 55, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (77, 56, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (78, 57, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (79, 33, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (80, 42, 1);
INSERT INTO `records` (`name_type_id`, `content_monitor_id`, `view_id`)
VALUES (81, 58, 1);