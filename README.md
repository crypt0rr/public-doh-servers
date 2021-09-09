# DNS-over-HTTPS (DOH) provider list

A simple list with public DNS-over-HTTPS (DOH) providers so you can easily block them.

The list is based on DNS providers their information pages and [AdGuard DNS Providers](https://kb.adguard.com/en/general/dns-providers) overview.

There is a little script included that can fetch the newest IPs from the `dns.list` file, you can chose the upstream DNS server where you would like to fetch the IPs from.

## Usage

```bash
$ ./dns-to-ip.sh 
Enter DNS server to use: 1.1.1.1
```

## License

MIT
