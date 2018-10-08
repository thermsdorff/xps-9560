# How to install Ubuntu on XPS 9560

## Grub params

```bash
acpi_rev_override=5
acpi_osi="Windows 2009"
acpi_backlight=vendor
i915.modeset=1
nouveau.modeset=0
```
## After Install

Execute following commands right after installation

```bash
apt install tlp tlp-rdw powertop

tlp start

powertop --auto-tune
```

## Gnome extensions

* Apt Update Indicator
* Clipboard Indicator
* Do Not Disturb Button
* Emoji Selector
* Refresh Wifi Connections
* TopIcons Plus
* User Themes
