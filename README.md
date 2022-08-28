# Ambiente no Terraform

## Alexandre Augusto

### Passos de criação 

1. **Criando Provider e arquivo da VPC**

2. **Criando subnet pública**

3. **Criando Security Group** 

4. **Criando instância ec2 e arquivo das variáveis**

5. **Criando a chave para acesso SSH**

6. **Criando o Internet Gateway**

7. **Criando a Route Table**

8. **Criando Elastic IP**

   

### Passo 1

![img](https://lh4.googleusercontent.com/DCgIJhWPj8WOYJyX7tIWHyhW0xz12sU4GOQAE83OvbR8cc9SRr5svaDdCTJA8q9HDLKyW_zjQrY5UAMl7oYDlbc8HpqvCII8FwDmK64kH164DQ1r4RxdUFWmMv62E5Ec4Fnhb6ZOQcAAqkwlP9_0F74) 

Criando provider na aws na região de virgínia, utilizando a versão 1.2 do terraform.




![img](https://lh3.googleusercontent.com/QvwjxxEQH7e1WU4rwqP_MMKvigQ77_GIRZ2i0zLUnvogWhf6r_0tRm6kSEztRpkbzfxUr818TGS5-DUuewIY7zQzvd-H02tUzWSsh1x1YjO28x7dn6Vod4baitWXTXS7TkrTfGyfnlQhC-XajGDY_Fs) 

Criando uma VPC 



![img](https://lh6.googleusercontent.com/Vq3e5tW7Pa1s9ZS3rQrn8DTf4aMfffb8PkKMxUotaUfpzHl3gmubqc37GEWQ9lEcgQAjusf2H3bm62MtmLCkYQM9qvS1PoNEj_6ApwYwhvLm48lX-j_HTxEp7GyQ6q86PRrReP8xg6jqELUFMDH5bA) 

Criando uma subnet pública com ip público ligada a vpc.



![img](https://lh4.googleusercontent.com/iw40wGf1lHL2Ri3YkVOWDIMe9JE2fKL8a5KgS7nhfn0fPajbYV0jR8atQMMMI8nzNEJOiM5r0pzqj74mm1M1TkF-bdrmYtUYY0QW9QjrJITRBlPslWKXNTqVZjdRm9mgGdZcTNFhICnP1IEkYTOfFAQ) 

Criando um Security Group associando a VPC, liberando a porta 80 e 443 (HTTP e HTTPS) e a porta 22 para acesso ssh restrito ao ip local.



![img](https://lh5.googleusercontent.com/0IPd0RnKVrfKAZZHyA4_z5MneOPtfqSQYW91bAlEAwb_5qa4KzZdM-IxsnNIodz9qDX96JDYf95ZGm7XhVJdMNRnhYh5We1kzrz0SYyTVDSKsDww63P_pKOibEWHRN3QWb1UlMFGMjbP4aX-D3BQpLg)      



![img](https://lh5.googleusercontent.com/QWRusZFxZfiPmGMO94gzwzU6tI4nAOiRSaXBqNXEaVxeWM4gFhRFYrpkyvfOIGpqZkUbkHqnkuWKK90UropLFfl7sLXz4s1QwxNHmNaiqlwrE_TkWAfHx2fQb7OQitrTNQt9esduBvGKgBI55Zve7SQ) 

Criando uma instância ec2 com CentOS 8 com serviço Nginx



![img](https://lh4.googleusercontent.com/sxcPjeLb0TRhzAY8247geGnNepvi41_9HklsCUXfdGobCdUwgmg5wYN8o1LjQ_JiO2nq1-4BtMZtLSOPCoq97F74ZgakwvhTHz4jlyUelf_01U8wLt278L09Y9mQLiPcRFtyhXc-Re96PHWTYUTt_wU) 

Criando uma variável para imagem do CentOS 8, nome da chave pem e uma variável com o base path do projeto



![img](https://lh3.googleusercontent.com/ncq1dUn4vcYrF-5EA_IGijh0G1zwHBXk5EWDe6zWkpvhZ0BOsrKaXaQ0zol817-_SrKTth9oYU2NpSHOwoP6rCty5Bmz__z3fWrqmxIfCRRTLtx1CbkKh6OO1JCUvsAbCbCLTWo8avpUpEWTiyzIKgM) 

Gerando uma chave privada para acesso ssh e salvando na raiz do projeto



![img](https://lh5.googleusercontent.com/-zGt4xRlBfgqnAmF25WfHbhg_HcscoHORutY-hu873KGujJFqULVn7wjMtc_b-CWu8oYAd-Q7VSIHoV7K4SBhuCvGwCR9UUC39u3epF5BKmHcLRKYx8lFLIZLI7hewV348mVuullZuBfTxfhonjXnw)  

Criando um Internet Gateway para liberar acesso da vpc a internet



![img](https://lh5.googleusercontent.com/Ac7vGejXjHTlMOg4IFHUpNnc0yFwNfyba7vhd5EKMql2sHq6MKuOR0qpHi8SZW5vQC0uQSqaO3IuDXLYacGR6TmEuaHj_6uMBJuPyKXuM6nUNb13UwymZW9-K7JP4D4gfBWib0oH05ZDfxmHW4oRTw)  

Criando uma Route Table, adicionando uma rota à ela da sub-rede que direciona o tráfego de entrada da internet para o gateway da Internet.



![img](https://lh6.googleusercontent.com/8X2R_pDubmG5DmSjD1obbUSwHefOa5uI6UjagLbUJtTWC1BZJsg_j2TA3R1prjKi6PEsKf1hxHHMufyPiUHNAH5mq5Jj3aODLZ8lpmA_hMfFplGe3nzy1omMoOCoJhTItxDlIOQvvbYI2LRlG1UyDd4) 

Criando e alocando um elastic ip para ec2, assim sendo possível fazer conexão ssh com a máquina.



## Ambiente Funcionando na AWS
![img](https://lh5.googleusercontent.com/80KwWQO3hw_4v-MZ2PH2QW_4_5-aGjJNjUnSYinmVrR_Wd4NlRm8SKE0Bi98eRaUAaQCa_f9NXTvqWsQ9VqIeyXtaZ2jpFwhUiWNuIeRX9mR5hh3kC5_ShNg2Q50IMJLifVebu-w1-RL_XDJh7THuMw)Acesso ssh feito para dentro da máquina com servidor CentOS 8 e o serviço Nginx instalado.



![img](https://lh3.googleusercontent.com/x7n3Nm0Lyj7S51uCE4nToKHoX38Mo-7S2QNu-cBp7ITUDJgyR27hrTa_eQr37ZTgBEdHlED0ZusHPSEA5wCBYo1243g-pCv0Hs0nFToZ6HAVMgpzRlq2aTkcQwMIxXjxTkHz-dnRy8LYekybC_F9k2U) Acessando o ip da máquina no navegador é possível ver o Nginx funcionando. 



![img](https://lh4.googleusercontent.com/CYez12PXYkqANPztOaBE__Gww5jc-ONTm2h77Pd28lb4OaauLNJfGiCcCIQW3woFvoIjoKCA50Af1tBcrJ1OjHJbrHHQbbtvDDEZTpYBdpr2SqHZdED3Ehf_PZYRZV_5baLxQkXi3WkwzNfBC9cHcBre-p3b9E-BAoQcxZaj53UYGSHyxNbjKlc4Fw) Instância ec2 rodando na AWS.



![img](https://lh5.googleusercontent.com/dDUNIzoUvsQT5CEeXWqZzYWhUrO7ejteYuwATXE4n0tkxUoWeZzyqlV02WIXP57yY2-XAAGF0F8foQWwb2Nyx8CLTvUBkBSuPZPPBdaOpOgqL7pXSOOEVbjvaSCWzTW2mu3-wr8hRDZfgTuTeodODawDhWENCBSOQaRgy_7EcdyprvwMOEeDyQBOug) Security Group associado a vpc com as regras do firewall: 

- Somente entrada pelas portas http e https 

- A porta ssh só pode ser acessada pelo seu ip residencial

  

![img](https://lh3.googleusercontent.com/hHSoA6IjElxwbNb65N1t0bngWl3RXXP6PS8I14VR28FPE64wnoyNQkxqyHOFL_IeyhR6HVlgqobkvDvxIFKArdfuDKGvFKQcZYz3rLIoPi_ieNHF_wcKgrSKbwjqpyXKpnsAAksdDz6QYfT1NPzCJeM) 

Shell Script para instalação do nginx e correção de um problema muito comum no CentOS 8: ***Failed to download metadata for repo AppStream***