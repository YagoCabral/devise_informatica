Instruções de Uso

Para começar, siga estas etapas simples:

Configuração do Banco de Dados:

Após baixar o projeto, certifique-se de migrar o banco de dados e preenchê-lo com dados iniciais. Execute os seguintes comandos no terminal:
rails db:migrate
rails db:seed

Utilizando o Formulário:
O cliente pode preencher o formulário com as peças de sua preferência, seguindo todas as validações definidas no projeto.

Exemplos de Pedidos:
Para ajudar no entendimento das validações e no preenchimento correto do formulário, consulte o arquivo create_order_script.rb. 
Este arquivo contém vários exemplos de pedidos corretos e incorretos, que podem ser úteis durante o desenvolvimento e testes.
Para fazer um pedido utilizando o script JSON, você pode utilizar o Postman ou qualquer outra ferramenta de cliente HTTP de sua preferência. 
Basta enviar uma solicitação POST para o endpoint apropriado (http://localhost:3000/orders) com os dados do pedido no formato JSON.

Visualização de Pedidos Realizados:
Após o preenchimento do formulário e a submissão dos pedidos, você poderá acessar a lista de pedidos realizados.
Para visualizar os pedidos feitos, acesse o link ./pedidos_realizados no navegador.

[erd.pdf](https://github.com/YagoCabral/devise_informatica/files/15093837/erd.pdf)
