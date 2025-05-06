# ===============================
# .word   -> inteiro (32 bits)
# .half   -> inteiro curto (16 bits)
# .byte   -> inteiro pequeno (8 bits)
# .float  -> número real (32 bits, ponto flutuante)
# .double -> número real (64 bits, ponto flutuante)
# .asciiz -> texto (string terminada com '\0')
# .ascii  -> texto (string sem '\0' no final)
# .space  -> reserva espaço (em bytes) na memória
# ===============================

.data
x:  .word 10        # variável x com valor 10
y:  .word 20        # variável y com valor 20
nl: .asciiz "\n"    # quebra de linha / adicionei por mim mesmo, vou usar para quebrar a linha entre a escrita das variaveis

.text
li $v0, 1        # código para imprimir inteiro
lw $a0, x        # carrega x em $a0
syscall          # imprime x

li $v0, 4        # código para imprimir string
la $a0, nl       # carrega endereço da quebra de linha
syscall          # imprime a quebra de linha

li $v0, 1        # código para imprimir inteiro
lw $a0, y        # carrega y em $a0
syscall          # imprime y

li $v0, 10       # código para encerrar programa
syscall          # encerra