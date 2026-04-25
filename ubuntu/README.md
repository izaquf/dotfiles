<pre>
<img src="./ubuntu.png" alt="Ubuntu" height="500">
<h3>Ubuntu-specific settings</h3>
</pre>

---

### Installation

```bash
	
	chmod +x install.sh
	
	source install.sh

	./install.sh

```

#### You can add the line to your /home/username/.bashrc and /root/.bashrc files

```bash
	
	source /etc/ubuntulogo.sh

```

#### Additionally, in the same /home/username/ and /root/ directories, you can copy the .bash_aliases file from the common folder.

```bash
	
	cp -av ../common/.bash_aliases /home/username/
	cp -av ../common/.bash_aliases /root/

```

#### PS1 color

```bash
	
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\u\[\033[01;31m\]@\h\[\033[00m\]:\[\033[01;37m\]\w\[\033[00m\]\$ '

```
#### Root user PS1 color

```bash

	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;37m\]\w\[\033[00m\]\$ '

```

