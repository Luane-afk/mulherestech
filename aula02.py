'''print('Qual e sua idade?')
idade = int(input())

if idade >= 18:
    print(' ACESSO LIBERADO! BOA FESTA!')
else:
    print(' ACESSO NEGADO! RALA CRIA :x')'''

    # Código pra liberar o acesso somente para maiores de 19 anos 

'''print('Digite sua idade:')
idade = int(input())

if idade < 18:
    print(' ACESSO NEGADO! VOCÊ E MENOR DE IDADE')
elif idade == 18:
    print('VOCÊ ESTÁ QUASE LÁ! MAIS UM ANO E VOCÊ TERÁ ACESSO!')
else:
    print('ACESSO LIBERADO! BOA FESTA')'''

'''print('Digite a nota do Primeiro Bimestre:')
b1 = float(input())
print('Digite a nota do Segundo Bimestre:')
b2 = float(input())
print(' Digite a nota do teceiro Bimestre:')
b3 = float(input())
print(' Digite a nota do Quarto Bimestre:')
b4 = float(input())
media = (b1 + b2 + b3 + b4) / 4
print(' A média do Aluno é:',media)
if media < 7:
    print('Recuperação')
elif media <= 5:
    print('Reprovado')
else:
    print('Aprovado')'''

'''print('Qual seu gênero? (F OU M)')
genero = input()
print('Qual município você mora?')
municipio = input()

if genero.upper() == 'F' and municipio.lower()== 'rio de janeiro':
    print('Você pode participa dos mullheres Tech')
else:
    print('Você não pode participar')'''

print('Qual é sua idade?')
idade = int(input())

#não esqueça de que if, elif e else são um teste logico como se fose o =SE no excel 
if idade > 18:
    print(' Acesso liberado\nBom filme')#\n e para exbir na linha abaixou para mais de uma mensagem
   
elif idade >= 16:
    print('O filme não e permitido para menores de 16 anos\nVocê esta acompanhado de uma responsável legal ?')
    responsavel = input().upper()#e o upper,print,upper são um comandos 
    if responsavel == 'S':
        print('OK')#pode fazer outra condiçaõ dentro do elif pode .que no caso 

    else:
        print('Você vai pra casa :D')

else:
    print('Acesso negado :X')
#if, elif e else tem que esta na ordem sempre .