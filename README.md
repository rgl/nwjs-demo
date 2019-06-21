
# syscalls

To see what syscalls nw is using use:

```bash
strace -o nw-strace.log -f ./tmp/nwjs/nw .
```

Then look into the `nw-strace.log` file.

# mDNS

By default, chromium opens a local listening socket at `224.0.0.251:5353` to receive device discovery notifications.

This can be disabled at the chrome://flags/#device-discovery-notifications page (search for Device Discovery Notifications) or with the chromium arg `--disable-device-discovery-notifications` (like its done with the `chromium-args` property in [package.json](package.json)).

**NB** It seems mDNS can only be fully disabled by recompiling the nwjs source; see the `enable_mdns` build flag at https://github.com/nwjs/chromium.src/blob/6d4b9e7239747d19eb6f26c67dc331fb43727348/net/BUILD.gn#L70.
