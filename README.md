# Setup


## Your Vagrant download the [ubuntu/xenial64](https://atlas.hashicorp.com/ubuntu/boxes/xenial64) box image on latest version

# 1- Baixe  o Vagrant-Rails desse repositório e coloque numa pasta de fácil acesso

# 2- Tire o arquivo "Passengerfile.json" de dentro da pasta "data"

# 3- Faça checkout do seu projeto dentro da pasta "data" do vagrant-Rails

# 4- Volte o arquivo "Passengerfile.json" para a pasta "data" 

# 5- Abra sua linha de comando como administrador e rode o comando "vagrant up --provision", O vagrant vai baixar o linux ubuntu ultima versão, instalar e vai baixar todas as dependências do projeto

# 6- Depois disso rode o comando "vagrant ssh" para entrar no ssh do seu vagrant, rode o comando "cd /home/vagrant/app" para viajar para a pasta "app" (essa pasta contém os mesmos arquivos que a pasta "data" de sua máquina real e vice-versa)

# 7- Dentro da pasta "app" do seu vagrant rode o comando "bundle install" para baixar todas as dependências do Rails listadas no Gemfile de seu projeto

# 8- Ainda dentro da pasta "app" do seu vagrant rode o comando "bower install" para baixar todas as dependências de front-end de seu projeto

# 9- Rode qualquer outros comandos para fazer tarefas específicas de seu projeto

# 10- Seu projeto estará rodando e acessível no ip "192.168.56.101" na porta 80, caso queira mapeie esse ip para nome-seu-projeto.dev no seu arquivo C:\Windows\System32\drivers\etc\hosts para facilitar o acesso

## seja feliz ;)

