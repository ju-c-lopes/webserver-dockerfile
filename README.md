# Página Web simples com Servidor Node e Docker ![Fiap + Alura](https://postech.fiap.com.br/svg/fiap-plus-alura.svg)

### Descrição:

> Exercício prático de Docker para criação de um _servidor web node_ já pré-configurado, a partir de um 🐋 **Dockerfile**

### Ação do 🐋 Dockerfile

1. O Dockerfile baixa a <code>_imagem do node_</code> do Docker Hub
2. Copia o <code>arquivo .zip</code> para a pasta raíz da imagem a ser zerada
3. Extrai os arquivos zipados _(node_modules, html, css, etc)_ na pasta raíz.
4. Apaga o arquivo .zip.
5. Instala as depenências do node.
6. Define a inicialização do node ao criar containers

## _Ver este projeto funcionando:_

### Instalação

> Recomendamos o uso de um sistema Linux, como o Ubuntu ou outro de sua preferência.

> Neste exemplo, explicaremos a instalação do docker no Ubuntu pela simplicidade e facilidade da instalação.

> Com o terminal `bash` aberto, utilize os seguintes comandos:

<pre>
 curl -fsSL https://get.docker.com -o get-docker.sh
 sudo sh get-docker.sh
</pre>

> Ao final do processo, teste se a instalação foi bem sucedida através do comando

<pre>docker -- version</pre>

> _OBS:_ É possível que tenha a necessidade de usar o comando com privilégios administrativos, para isso use `sudo docker --version`

> Caso deseje evitar ficar digitando o comando sudo, execute os seguintes comandos:

<pre>sudo addgroup docker</pre>

> Este comando criará o **grupo de usuários docker** no sistema, então adicione seu usuário a este grupo com o comando:

<pre>sudo usermod -aG docker $USER</pre>

> A partir de agora você não terá mais a necessidade de utilizar o comando `sudo` para executar os comandos do docker.

> Para fazer a instalação em outros _S.O.s_ verifique a [Página de instalação do Docker](https://docs.docker.com/engine/install/).

---

### Executando o projeto

> Com o Docker instalado e funcionando, certifique-se de estar na raíz deste projeto, então execute:

<pre>docker build -t user/site-node:1.0 .</pre>

> Substitua "user" por seu nome de usuário, de preferência o usuário que você tem ou poderá criar no [Docker Hub](https://hub.docker.com/).

> Observe também que ao final da linha de comando há um ponto(.), este ponto indica que a imagem docker que será criada estará utilizando o diretório raiz deste projeto.

> Será feito todo o processo de criação que pode levar alguns momentos até ser finalizado. Após seu término, execute o comando docker:

<pre>docker run -d -p 8080:3000 user/site-node:1.0</pre>

> A aplicação estará ouvindo na `porta 8080` no host, o qual a aplicação node definiu a `porta 3000` do ambiente do container docker para ser exposta para o host.

> Sendo assim, agora é possível acessar a página web no seu navegador através do endereço `http://localhost:8080` 😉

![Docker logo](https://upload.wikimedia.org/wikipedia/commons/e/ea/Docker_%28container_engine%29_logo_%28cropped%29.png?20230309095311)  ![Node Js](https://www.smartsight.in/wp-content/uploads/2021/09/NodeJS-300x175.jpg)