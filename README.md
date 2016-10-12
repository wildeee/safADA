# safADA
##### Compilador da linguagem ADA

#### Instalando o compilador de ADA do GCC

* [GCC] - Baixe o GCC
* Na hora de instalar, certifique-se de ter instalado o compilador de ADA, que não vem marcado por default.

[GCC]: <https://sourceforge.net/projects/tdm-gcc/files/TDM-GCC%20Installer/tdm64-gcc-5.1.0-2.exe/download>

#### Após a instalação, certifique-se de que a mesma deu certo, e que o compilador está na linha de comando

```sh
$ gcc -v
```

#### Para compilar e rodar o código em ADA com o GCC, acesse o diretorio do arquivo na linha de comando (no caso, o arquivo é o HelloWorld, dentro da pasta de "Exemplos ADA") e digite:

```sh
$ gcc -c HelloWorld.adb
$ gnatbind HelloWorld
$ gnatlink HelloWorld
$ HelloWorld
```

#### Pronto, o último comando acima executa o código. Lembre-se sempre de remover os acentos.

### Nos exercícios de exemplo, foi criado um esquema com arquivos de entrada e saída. Para rodar, basta fazer:

```
$ gcc -c NomeDoArquivo.adb && gnatbind NomeDoArquivo && gnatlink NomeDoArquivo && NomeDoArquivo < entrada.txt > saida.txt
```

#### por exemplo:

```
$ gcc -c BuscaBinaria.adb && gnatbind BuscaBinaria && gnatlink BuscaBinaria && BuscaBinaria < entrada.txt > saida.txt
```