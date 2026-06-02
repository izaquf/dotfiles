<pre>
<img src="./debian.png" alt="Debian" height="500">
<h3>Configurações específicas para Debian</h3>
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
    echo "    ______     _     _             "
    echo "    |  _  \   | |   (_)            "
    echo "    | | | |___| |__  _  __ _ _ __  "
    echo "    | | | / _ \ '_ \| |/ _| | |_ \ "
    echo "    | |/ /  __/ |_) | | (_| | | | |"
    echo "    |___/ \___|_|__/|_|\__|_|_| |_|"
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

#### Adicione os diretórios sbin ao seu $PATH se ainda não estiverem lá
```bash
export PATH="$PATH:/sbin:/usr/sbin"
```

#### Além disso, nos mesmos diretórios /home/usuário/ e /root/, você pode copiar o arquivo .bash_aliases da pasta common

```bash
cp -av ../common/.bash_aliases /home/usuário/
cp -av ../common/.bash_aliases /root/
```
