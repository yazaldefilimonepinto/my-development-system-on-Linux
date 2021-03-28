if [ -e "~/my-development-system-on-Linux/.instalar.sh" ]; then
    bash ./instalar.sh
else
    echo "Muito obrigo por usares a minha feramenta!"
    sleep 2
    echo "|------------------------------------|"
    sleep 1
    echo "   Author: Yazalde Felimone pinto"
    sleep 1
    echo "              Github"
    sleep 1
    echo "              LInkdin"
    sleep 1
    echo "             Instagram"
    sleep 1
    echo "|------------------------------------|"
    sleep 3
    echo "Usuario da maquina `whoami`"
    sleep 2
    echo "O Usuario `whoami` nao tem acesso a Root!"
    sleep 3
   if [ "`whoami`" != "root" ];then
        echo "o `whoami` nao tem premisao root fazendo instalacpes neasecarios"
        root=git
        rootMaster=wget
        edMaster=neovim
        sleep 2
        if [ -e "/bin/apt-get" ]; then
            apt-get update
            apt-get install $root -y
            apt-get install $rootMaster -y
            clear
            sleep 1
            wget https://raw.githubusercontent.com/Cabbagec/termux-ohmyzsh/master/install.sh
            clear
            mv install.sh .install.sh
            chmod 777 .install.sh
            echo "Agora vai abrit uma chanela cok varias opcoes a primeira opca e para escolher o cor e a segunda e pra escolher a font"
            sleep 5
            bash .install.sh 
            clear
            echo "Agora vai fechar o teminal e so voltar a abrir"
        elif [ -e "/bin/apk" ]; then
            apk update
            apk add $root -y
            sleep 2
            apk install $root -y
                apk install $rootMaster -y
            wget https://raw.githubusercontent.com/Cabbagec/termux-ohmyzsh/master/install.sh
            clear
            mv install.sh .install.sh
            chmod 777 .install.sh
            echo "Agora vai abrit uma chanela cok varias opcoes a primeira opca e para escolher o cor e a segunda e pra escolher a font"
            sleep 5
            bash     .install.sh 
            clear
            echo "Agora vai fechar o teminal e so voltar a abrir"
        elif [ -e "/bin/dnf" ]; then
            dnf check-update
            dnf install $root
            dnf install $rootMaster
            sleep 2
        elif [ -e "/bin/pacman" ]; then
            pacman -Sy
            pacman -S $root
            pacman $rootMaster
            wget https://raw.githubusercontent.com/Cabbagec/termux-ohmyzsh/master/install.sh
            clear
            mv install.sh .install.sh
            chmod 777 .install.sh
            echo "Agora vai abrit uma chanela cok varias opcoes a primeira opca e para escolher o cor e a segunda e pra escolher a font"
            sleep 5
            bash ./.install.sh 
            clear
            echo "Agora vai fechar o teminal e so voltar a abrir"
        elif  [ -e "/data/data/com.termux/files/usr/bin/apt-get" ]; then
            apt update
             apt install $root -y
            clear
            sleep 5
            apt install $root-y
            wget https://raw.githubusercontent.com/Cabbagec/termux-ohmyzsh/master/install.sh
            clear
            mv install.sh .install.sh
            chmod 777 .install.sh
            echo "Agora vai abrit uma chanela cok varias opcoes a primeira opca e para escolher o cor e a segunda e pra escolher a font"
            sleep 5
            bash .install.sh 
            echo "Desejas usar o neovim com cofiguracoes do Vscode?[S/N]: "
            read editor
            if [ editor = S || editor = s]; then
                apt install $edMaster -y
                sleep 1 
                git clone https://github.com/yazaldefilimonepinto/amazing-vimrc
                mv amazing.vimrc .amazing.vimrc
                cd .amazing.vimrc && chmod +x * || bash install.sh
                clear
                echo "Agora vai abrir uma aba e vai instalar as dependecias espere ate aparecer a amensangem finish don"
                echo "Depois inseri o comando ESC + x! +ENTET para sair"
                sleep 5
                cd ~/my-development-system-on-Linux && nvim
            elif [ editor = "N" || editor = "n" ]; then
                clear
            
            fi
            echo "Agora vai fechar o teminal e so voltar a abrir"
    else
        echo "Voce nao e um super Usuario"
        sudo apt-get install $root -y
        sudo apt-get install $root -y
        sudo    wget https://raw.githubusercontent.com/Cabbagec/termux-ohmyzsh/master/install.sh
            clear
        sudo    mv install.sh .install.sh
        sudo    chmod 777 .install.sh
        echo "Agora vai abrit uma chanela cok varias opcoes a primeira opca e para escolher o cor e a segunda e pra escolher a font"
        sleep 5
       sudo bash .install.sh 
        clear
        echo "Agora vai fechar o teminal e so voltar a abrir"
        clear
        sleep 5
        fi
   fi

fi
clear
sleep 2  
echo "Me ajude no meu repositorio! Github"
termux-open https://github.com/yazaldefilimonepinto
