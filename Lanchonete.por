programa
{
	inclua biblioteca Matematica-->mat
	inclua biblioteca Util --> U
	
	inteiro op,op2
	cadeia cardapio
	logico sair = falso
	real total = 0.0
	inteiro quant, quantped
	cadeia nome 
	cadeia pedido = ""
	cadeia ordem1,ordem2
	cadeia pag, pagamento

	funcao PAGAMENTO()
	{
		U.aguarde(2000)
		escreva("Deseja realizar o pagamento agora?")
		leia(pag)

		se(pag=="sim" ou pag=="SIM" ou pag=="Sim")
		{
			escreva("Qual forma de pagamento?")
			leia(pagamento)
			limpa()
			U.aguarde(2000)
			escreva("Aguardando...")
			U.aguarde(3000)
			limpa()
			escreva("Pagamento efetuado.\n")
			escreva("Muito obrigada pela sua compra!!\n")
			escreva("Volte sempre!")
			sair=verdadeiro
		}
		
	}
	
	funcao SOBREMESA()
	{
		escreva("      -------SOBREMESAS-------       ")
		escreva("\n1-Pudim                     R$12,50")
		escreva("\n2-Brownie                   R$10,00")
		escreva("\n3-Sorvete                   R$15,90")
		escreva("\n4-Mousse de Chocolate       R$11,50")
		escreva("\n5-Petit Gâteau              R$18,90")
		escreva("\n6-Cheesecake de Frutas      R$16,00")
		escreva("\n7-Sair\n")
	}
	
	funcao BEBIDAS()
	{
		escreva("        -------BEBIDAS-------          ")
		escreva("\n1-Coca cola zero               R$6,50")
		escreva("\n2-Guaraná                      R$6,50")
		escreva("\n3-Suco natural                R$10,90")
		escreva("\n4-Sprite                       R$6,00")
		escreva("\n5-Água Mineral (500ml)         R$4,50")
		escreva("\n6-Água com Gás                 R$5,00")
		escreva("\n7-Chá Gelado (Pêssego/Limão)   R$8,90")
		escreva("\n8-H2OH! (Limão)                R$7,50")
		escreva("\n9-Energético                  R$14,00")
		escreva("\n10-Sair\n")
	}
	
	funcao LANCHES()
	{
		escreva("          -------LANCHES-------        ")
		escreva("\n1-Hambúrguer                  R$20,00")
		escreva("\n2-Pizza P                     R$22,90")
		escreva("\n3-Batata Frita                R$14,90")
		escreva("\n4-Sanduíche natural           R$13,00")
		escreva("\n5-Porção de Nuggets(10un)     R$18,90")
		escreva("\n6-Hot Dog completo            R$12,00")
		escreva("\n7-Beirute de filé             R$32,00")
		escreva("\n8-Sair\n")
	}
	
	funcao MENU()
	{
		escreva("-------MENU-------")
		escreva("\n1-Lanches")
		escreva("\n2-Bebidas")
		escreva("\n3-Sobremesas")
		escreva("\n4-Comanda")
		escreva("\n5-Sair\n")
		leia(op)
		
	}

	
	funcao inicio()
	{
		escreva("Olá! Seja bem-vindo(a)")
		escreva("\nQual seu nome?")
		leia(nome)
		escreva("\nGostaria de ver o cardápio?")
		leia(cardapio)

		se(cardapio=="sim" ou cardapio=="SIM" ou cardapio=="Sim")
		{
			limpa()
			MENU()
		}
		senao
		{
			sair=verdadeiro
		}
		
		limpa()
		
		enquanto (sair!=verdadeiro)
		{
			escolha(op)
			{
				caso 1:
				limpa()
				LANCHES()
				escreva("Escolha uma opção: ")
		     	leia(op2)
		     	escreva("Escolha a quantidade: ")
		     	leia(quant)
		     		se(op2==1){
		     		limpa()
		     		total=total+(20.00*quant)
		     		quantped=quant
		     		ordem1="Hambúrguer"
		     		ordem2="Hambúrgueres"
		     			se (quantped==1)
		     			{
		     				pedido=pedido + quant + " " +ordem1 + "\n"
		     			}
		     			senao
		     			{
		     				pedido=pedido + quant + " " + ordem2 + "\n"
		     			}
		     		MENU()
		     		}
		     		senao se(op2==2){
		     		limpa()
		     		total=total+(22.90*quant)
		     		quantped=quant
		     		ordem1="Pizza P "
		     		ordem2="Pizzas P"
		     			se (quantped==1)
		     				{
		     					pedido=pedido + quant + " " + ordem1+ "\n"
		     				}
		     				senao
		     				{
		     					pedido=pedido + quant + " " + ordem2 + "\n"
		     				}
		     		MENU()
		     		}
		     		senao se(op2==3){
		     		limpa()
		     		total=total+(14.90*quant)
		     		quantped=quant
		     		ordem1="Batata Frita"
		     		ordem2="Batatas Fritas"
		     			se (quantped==1)
		     				{
		     					pedido=pedido + quant + " " + ordem1 + "\n"
		     				}
		     				senao
		     				{
		     					pedido=pedido + quant + " " + ordem2 + "\n"
		     				}
		     		MENU()
		     		}
		     		senao se(op2==4){
		     		limpa()
		     		total=total+(13.00*quant)
		     		quantped=quant
		     		ordem1="Sanduíche Natural"
		     		ordem2="Sanduíces Naturais"
		     			se (quantped==1)
		     				{
		     					pedido=pedido + quant + " " + ordem1 + "\n"
		     				}
		     				senao
		     				{
		     					pedido=pedido + quant + " " + ordem2 + "\n"
		     				}
		     		MENU()
		     		}
		     		senao se(op2==5){
		     		limpa()
		     		total=total+(18.90*quant)
		     		quantped=quant
		     		ordem1="Porção de Nuggets"
		     		ordem2="Porções de Nuggets"
		     			se (quantped==1)
		     				{
		     					pedido=pedido + quant + " " + ordem1 + "\n"
		     				}
		     				senao
		     				{
		     					pedido=pedido + quant + " " + ordem2 + "\n"
		     				}
		     		MENU()
		     		}
		     		senao se(op2==6){
		     		limpa()
		     		total=total+(12.00*quant)
		     		quantped=quant
		     		ordem1="Hot Dog Completo"
		     		ordem2="Hot Dogs Completos"
		     			se (quantped==1)
		     				{
		     					pedido=pedido + quant + " " + ordem1 + "\n"
		     				}
		     				senao
		     				{
		     					pedido=pedido + quant + " " + ordem2 + "\n"
		     				}
		     		MENU()
		     		}
		     		senao se(op2==7){
		     		limpa()
		     		total=total+(32.00*quant)
		     		quantped=quant
		     		ordem1="Beirute de Filé"
		     		ordem2="Beirutes de Filé"
		     			se (quantped==1)
		     				{
		     					pedido=pedido + quant + " " + ordem1 + "\n"
		     				}
		     				senao
		     				{
		     					pedido=pedido + quant + " " + ordem2 + "\n"
		     				}
		     		MENU()
		     		}
		     		senao{
		     		sair=verdadeiro
		     		}
				pare
				caso 2:
				limpa()
				BEBIDAS()
				escreva("Escolha uma opção:")
		     	leia(op2)
		     	escreva("Escolha a quantidade: ")
		     	leia(quant)
		     		se(op2==1){
		     		limpa()
		     		total=total+(6.50*quant)
		     		quantped=quant
		     		ordem1="Coca zero"
		     		ordem2="Cocas zero"
		     			se (quantped==1)
		     			{
		     				pedido=pedido + quant + " " + ordem1 + "\n"
		     			}
		     			senao
		     			{
		     				pedido=pedido + quant + " " + ordem2 + "\n"
		     			}
		     	MENU()
		     	}
		     	senao se(op2==2){
		     	limpa()
		     	total=total+(6.50*quant)
		     	quantped=quant
		     	ordem1="Guaraná"
		     	ordem2="Guaranás"
		     		se (quantped==1)
		     			{
		     				pedido=pedido + quant + " " + ordem1 + "\n"
		     			}
		     			senao
		     			{
		     				pedido=pedido + quant + " " + ordem2 + "\n"
		     			}
		     	MENU()
		     	}
		     	senao se(op2==3){
				limpa()
		     	total=total+(10.90*quant)
		     	quantped=quant
		     	ordem1="Suco Natural"
		     	ordem2="Sucos Naturais"
		     		se (quantped==1)
		     			{
		     				pedido=pedido + quant + " " + ordem1 + "\n"
		     			}
		     			senao
		     			{
		     				pedido=pedido + quant + " " + ordem2 + "\n"
		     			}
		     	MENU()
		     	}
		     	senao se(op2==4){
		     	limpa()
		     	total=total+(6.00*quant)
		     	quantped=quant
		     	ordem1="Sprite"
		     	ordem2="Sprites"
		     		se (quantped==1)
		     			{
		     				pedido=pedido + quant + " " + ordem1 + "\n"
		     			}
		     			senao
		     			{
		     				pedido=pedido + quant + " " + ordem2 + "\n"
		     			}
		     	MENU()
		     	}
		     	senao se(op2==5){
		     	limpa()
		     	total=total+(4.50*quant)
		     	quantped=quant
		     	ordem1="Água Mineral"
		     	ordem2="Águas Minerais"
		     		se (quantped==1)
		     			{
		     				pedido=pedido + quant + " " + ordem1 + "\n"
		     			}
		     			senao
		     			{
		     				pedido=pedido + quant + " " + ordem2 + "\n"
		     			}
		     	MENU()
		     	}
		     	senao se(op2==6){
		     	limpa()
		     	total=total+(5.00*quant)
		     	quantped=quant
		     	ordem1="Água com Gás"
		     	ordem2="Águas com Gás"
		     		se (quantped==1)
		     			{
		     				pedido=pedido + quant + " " + ordem1 + "\n"
		     			}
		     			senao
		     			{
		     				pedido=pedido + quant + " " + ordem2 + "\n"
		     			}
		     	MENU()
		     	}
		     	senao se(op2==7){
		     	limpa()
		     	total=total+(8.90*quant)
		     	quantped=quant
		     	ordem1="Chá Gelado(Pêssego/Limão)"
		     	ordem2="Chás Gelados (Pêssego/Limão)"
		     		se (quantped==1)
		     			{
		     				pedido=pedido + quant + " " + ordem1 + "\n"
		     			}
		     			senao
		     			{
		     				pedido=pedido + quant + " " + ordem2 + "\n"
		     			}
		     	MENU()
		     	}
		     	senao se(op2==8){
		     	limpa()
		     	total=total+(7.50*quant)
		     	quantped=quant
		     	ordem1="H2OH! (Limão)"
		     	ordem2="H2OHs! (Limão)"
		     		se (quantped==1)
		     			{
		     				pedido=pedido + quant + " " + ordem1 + "\n"
		     			}
		     			senao
		     			{
		     				pedido=pedido + quant + " " + ordem2 + "\n"
		     			}
		     	MENU()
		     	}
		     	senao se(op2==9){
		     	limpa()
		     	total=total+(14.00*quant)
		     	quantped=quant
		     	ordem1="Energético "
		     	ordem2="Energéticos"
		     		se (quantped==1)
		     			{
		     				pedido=pedido + quant + " " + ordem1 + "\n"
		     			}
		     			senao
		     			{
		     				pedido=pedido + quant + " " + ordem2 + "\n"
		     			}
		     	MENU()
		     	}
		     	senao{
		     		sair=verdadeiro
		     	}
				pare
				caso 3:
				limpa()
				SOBREMESA()
				escreva("Escolha uma opção:")
		    	 	leia(op2)
		    	 	escreva("Escolha a quantidade: ")
		     	leia(quant)
		    	 		se(op2==1){
		    	 		limpa()
		     		total=total+(12.50*quant)
		     		quantped=quant
		     		ordem1="Pudim"
		     		ordem2="Pudins"
		     			se (quantped==1)
		     			{
		     				pedido=pedido + quant + " " + ordem1 + "\n"
		     			}
		     			senao
		     			{
		     				pedido=pedido + quant + " " + ordem2 + "\n"
		     			}
		     	MENU()
		     	}
		     	senao se(op2==2)
		     	{
		     		limpa()
		     		total=total+(10.00*quant)
		     		quantped=quant
		     		ordem1="Brownie"
		     		ordem2="Brownies"
		     			se (quantped==1)
		     				{
		     					pedido=pedido + quant + " " + ordem1 + "\n"
		     				}
		     				senao
		     				{
		     					pedido=pedido + quant + " " + ordem2 + "\n"
		     				}
		     	MENU()
		     	}
		     	senao se(op2==3)
		     	{
		     	limpa()
		     	total=total+(15.90*quant)
		     	quantped=quant
		     	ordem1="Sorvete"
		     	ordem2="Sorvetes"
		     		se (quantped==1)
		     		{
		     			pedido=pedido + quant + " " + ordem1 + "\n"
		     		}
		     		senao
		     		{
		     			pedido=pedido + quant + " " + ordem2 + "\n"
		     		}
		     	MENU()
		     	}
		     	senao se(op2==4)
		     	{
		     	limpa()
		     	total=total+(11.50*quant)
		     	quantped=quant
		     	ordem1="Mousse de Chocolate"
		     	ordem2="Mousses de Chocolate"
		     		se (quantped==1)
		     		{
		     			pedido=pedido + quant + " " + ordem1 + "\n"
		     		}
		     		senao
		     		{
		     			pedido=pedido + quant + " " + ordem2 + "\n"
		     		}
		     	MENU()
		     	}
		     	senao se(op2==5)
		     	{
		     	limpa()
		     	total=total+(18.90*quant)
		     	quantped=quant
		     	ordem1="Petit Gâteau "
		     	ordem2="Petits Gâteaux"
		     		se (quantped==1)
		     		{
		     			pedido=pedido + quant + " " + ordem1 + "\n"
		     		}
		     		senao
		     		{
		     			pedido=pedido + quant + " " + ordem2 + "\n"
		     		}
		     	MENU()
		     	}
		     	senao se(op2==6)
		     	{
		     	limpa()
		     	total=total+(16.00*quant)
		     	quantped=quant
		     	ordem1="Cheesecake de Frutas"
		     	ordem2="Cheesecakes de Frutas"
		     		se (quantped==1)
		     		{
		     			pedido=pedido + quant + " " + ordem1 + "\n"
		     		}
		     		senao
		     		{
		     			pedido=pedido + quant + " " + ordem2 + "\n"
		     		}
		     	MENU()
		     	}
		     	senao{
		     		sair=verdadeiro
		     	}
				pare
				caso 4:
				limpa()
				escreva("Cliente:",nome,"\n")
				escreva("\n",pedido)
				escreva("\nTotal do pedido: R$",mat.arredondar(total, 2),"\n\n\n")
				U.aguarde(1500)
				PAGAMENTO()
				
				
				se (sair==falso)
				{
					limpa()
					MENU()
				}
				senao{
					sair = verdadeiro
				}
				
				pare
				caso 5:
				sair = verdadeiro
				pare
			}	
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2357; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */