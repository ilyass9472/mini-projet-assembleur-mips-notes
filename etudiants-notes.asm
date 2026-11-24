.data
trois:       .float 3.0
dix:         .float 10.0
msg_menu:    .asciiz "\n1.Saisir 2.Moyenne 3.Max 4.Min 5.Resultat 6.Afficher 7.Quitter\nChoix: "
msg_moyenne: .asciiz "Moyenne = "
msg_max:     .asciiz "Max = "
msg_min:     .asciiz "Min = "
msg_admis:   .asciiz "Admis\n"
msg_ajourne: .asciiz "Ajourne\n"

.text
menu:
    li   $v0, 4
    la   $a0, msg_menu
    syscall
    li   $v0, 5
    syscall
    move $t0, $v0

    li   $t1, 1
    beq  $t0, $t1, saisir
    li   $t1, 2
    beq  $t0, $t1, calc_moyenne
    li   $t1, 3
    beq  $t0, $t1, calc_max
    li   $t1, 4
    beq  $t0, $t1, calc_min
    li   $t1, 5
    beq  $t0, $t1, resultat
    li   $t1, 6
    beq  $t0, $t1, afficher
    li   $t1, 7
    beq  $t0, $t1, quitter
    j    menu

saisir:
    li   $v0, 6
    syscall
    mov.s $f1, $f0

    li   $v0, 6
    syscall
    mov.s $f2, $f0

    li   $v0, 6
    syscall
    mov.s $f3, $f0

    j    menu

calc_moyenne:
    add.s $f5, $f1, $f2
    add.s $f5, $f5, $f3
    l.s   $f6, trois
    div.s $f5, $f5, $f6

    li   $v0, 4
    la   $a0, msg_moyenne
    syscall
    li   $v0, 2
    mov.s $f12, $f5
    syscall
    j    menu

calc_max:
    mov.s $f7, $f1
    c.lt.s $f7, $f2
    bc1f   max_etape2
    mov.s  $f7, $f2
max_etape2:
    c.lt.s $f7, $f3
    bc1f   max_fin
    mov.s  $f7, $f3
max_fin:
    li   $v0, 4
    la   $a0, msg_max
    syscall
    li   $v0, 2
    mov.s $f12, $f7
    syscall
    j    menu

calc_min:
    mov.s $f8, $f1
    c.lt.s $f2, $f8
    bc1f   min_etape2
    mov.s  $f8, $f2
min_etape2:
    c.lt.s $f3, $f8
    bc1f   min_fin
    mov.s  $f8, $f3
min_fin:
    li   $v0, 4
    la   $a0, msg_min
    syscall
    li   $v0, 2
    mov.s $f12, $f8
    syscall
    j    menu

resultat:
    add.s $f5, $f1, $f2
    add.s $f5, $f5, $f3
    l.s   $f6, trois
    div.s $f5, $f5, $f6
    l.s   $f9, dix
    c.le.s $f9, $f5
    bc1t   est_admis
    li   $v0, 4
    la   $a0, msg_ajourne
    syscall
    j    menu
est_admis:
    li   $v0, 4
    la   $a0, msg_admis
    syscall
    j    menu

afficher:
    li   $v0, 2
    mov.s $f12, $f1
    syscall
    li   $v0, 2
    mov.s $f12, $f2
    syscall
    li   $v0, 2
    mov.s $f12, $f3
    syscall

    add.s $f5, $f1, $f2
    add.s $f5, $f5, $f3
    l.s   $f6, trois
    div.s $f5, $f5, $f6

    li   $v0, 4
    la   $a0, msg_moyenne
    syscall
    li   $v0, 2
    mov.s $f12, $f5
    syscall
    j    menu

quitter:
    li   $v0, 10
    syscall
