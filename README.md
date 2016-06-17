Some files and scripts to share between the different linux environments.

### Samba shares
create `~/.smbcredentials` (mode 600) with

    username=std
    password=<mypassword>
    domain=ABLETON

Do
    sudo mkdir -p /media/sun/people
    sudo mkdir -p /media/sun/teams
    sudo mkdir -p /media/sun/quickshare

edit `/etc/fstab` and add

    //sun/people /media/sun/people cifs uid=std,credentials=/home/std/.smbcredentials,iocharset=utf8,sec=ntlm	0	0
    //sun/teams /media/sun/teams cifs uid=std,credentials=/home/std/.smbcredentials,iocharset=utf8,sec=ntlm	0	0
    //sun/quickshare /media/sun/quickshare cifs uid=std,credentials=/home/std/.smbcredentials,iocharset=utf8,sec=ntlm	0	0

run `sudo mount -a` to test
