<pre>
<img src="./ubuntu.png" alt="Ubuntu" height="500">
<h3>Configurações específicas para Ubuntu</h3>
</pre>

---

### Instalação

#### Você pode adicionar as linhas aos seus arquivos /home/username/.bashrc e /root/.bashrc

<pre>
<b>
# Logo
logo() {
	clear
	echo ""
	echo -e "\e[01;31m"
	echo "     _    _ _                 _             "
	echo "    | |  | | |               | |            "
	echo "    | |  | | |__  _   _ _ __ | |_ _   _     "
	echo "    | |  | | '_ \| | | | '_ \| __| | | |    "
	echo "    | |__| | |_) | |_| | | | | |_| |_| |    "
	echo "     \____/|_.__/ \__,_|_| |_|\__|\__,_|    "
	echo -e "\e[0m"
	echo ""
}

logo
</b>
</pre>

#### Cor PS1

```bash
	
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\u\[\033[01;31m\]@\h\[\033[00m\]:\[\033[01;37m\]\w\[\033[00m\]\$ '

```
#### Cor do PS1 do usuário Root

```bash

	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;37m\]\w\[\033[00m\]\$ '

```

#### Além disso, nos mesmos diretórios /home/usuário/ e /root/, você pode copiar o arquivo .bash_aliases da pasta common

```bash
	
	cp -av ../common/.bash_aliases /home/usuário/
	cp -av ../common/.bash_aliases /root/

```
