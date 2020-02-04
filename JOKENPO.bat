@echo off
title jokenpo
mode 70,30
color d


:nome
cls
set /p nome= Digite seu nome: 
if "%nome%"=="" goto nome
set /a vit = 0
set /a der = 0
set /a emp = 0
set /a cont = 0

:rod
cls
echo JOGADOR: %nome%
echo.
set /a rodadas = 1
set /p rodadas= Escolha o numero de rodadas: 

:inicio

set /a cont = %cont% + 1

cls

set /a op = 0
echo ============================================
echo     	   Bem-Vindo ao JO-KEN-PO
echo ============================================
echo.
echo [1] PEDRA
echo [2] PAPEL
echo [3] TESOURA
echo [4] LAGARTO
echo [5] SPOCK
echo.
echo [E] Encerrar Jogo
echo [R] Regras
echo.
echo =================================
echo.
set /p op= Escolha uma opcao:
echo.
echo =================================

if %op% equ 1 goto pedra 
if %op% equ 2 goto papel
if %op% equ 3 goto tesoura
if %op% equ 4 goto lagarto
if %op% equ 5 goto spock
if %op% equ e goto exit
if %op% equ r goto regras
if %op% equ 0 goto inicio else(
echo Opcao invailda !!!
pause
set /a cont = %cont% - 1
goto inicio)

:regras
echo ==============
echo     REGRAS
echo ==============
echo.
echo Pedra:
echo Empata com Pedra; Ganha de Tesoura e Lagarto; Perde de Papel e Spock
echo.

echo Papel:
echo Empata com Papel; Ganha de Pedra e Spock; Perde de Tesoura e Lagarto
echo.

echo Tesoura:
echo Empata com Tesoura; Ganha de Lagarto e Papel; Perde de Pedra e Spock
echo.

echo Lagarto:
echo Empata com Lagarto; Ganha de Papel e Spock; Perde de Pedra e Tesoura
echo.

echo Spock:
echo Empata com Spock; Ganha de Pedra e Tesoura; Perde de Lagarto e papel
echo.
set /a cont = %cont% - 1
pause
goto inicio

:exit
	set /p exit= Deseja mesmo sair? [S/N] : 
	if %exit% equ n goto nome
	if %exit% equ s (exit) else(
	echo opcao invalida !!!
	set /a cont = %cont% - 1
	goto inicio)

:pedra
	set /a pc=(%random% %% 5) +1
	if %pc% equ 1 goto pedrapc	
	if %pc% equ 2 goto papelpc
	if %pc% equ 3 goto tesourapc
	if %pc% equ 4 goto lagartopc
	if %pc% equ 5 goto spockpc
	
		:pedrapc
			echo %nome% escolheu : PEDRA!
			echo Computador escolheu : PEDRA!
			echo.
			echo ==EMPATE==
			set /a emp = %emp% + 1
			goto placar
			
		:papelpc
			echo %nome% escolheu : PEDRA!
			echo Computador escolheu : PAPEL!
			echo.
			echo ==DERROTA==
			set /a der = %der% + 1
			goto placar
		
		:tesourapc
			echo %nome% escolheu : PEDRA!
			echo Computador escolheu : TESOURA!
			echo.
			echo ==VITORIA==
			set /a vit = %vit% + 1
			goto placar
		
		:lagartopc
			echo %nome% escolheu : PEDRA!
			echo Computador escolheu : LAGARTO!
			echo.
			echo ==VITORIA==
			set /a vit = %vit% + 1
			goto placar
		
		:spockpc
			echo %nome% escolheu : PEDRA!
			echo Computador escolheu : SPOCK!
			echo.
			echo ==DERROTA==
			set /a der = %der% + 1
			goto placar
pause

:papel
	set /a pc=(%random% %% 5) +1
	if %pc% equ 1 goto pedrapc	
	if %pc% equ 2 goto papelpc
	if %pc% equ 3 goto tesourapc
	if %pc% equ 4 goto lagartopc
	if %pc% equ 5 goto spockpc
	
		:pedrapc
			echo %nome% escolheu : PAPEL!
			echo Computador escolheu : PEDRA!
			echo.
			echo ==VITORIA==
			set /a vit = %vit% + 1
			goto placar
			
		:papelpc
			echo %nome% escolheu : PAPEL!
			echo Computador escolheu : PAPEL!
			echo.
			echo ==EMPATE==
			set /a emp = %emp% + 1
			goto placar
		
		:tesourapc
			echo %nome% escolheu : PAPEL!
			echo Computador escolheu : TESOURA!
			echo.
			echo ==DERROTA==
			set /a der = %der% + 1
			goto placar
		
		:lagartopc
			echo %nome% escolheu : PAPEL!
			echo Computador escolheu : LAGARTO!
			echo.
			echo ==DERROTA==
			set /a der = %der% + 1
			goto placar
		
		:spockpc
			echo %nome% escolheu : PAPEL!
			echo Computador escolheu : SPOCK!
			echo.
			echo ==VITORIA==
			set /a vit = %vit% + 1
			goto placar
	pause

:tesoura
	set /a pc=(%random% %% 5) +1
	if %pc% equ 1 goto pedrapc	
	if %pc% equ 2 goto papelpc
	if %pc% equ 3 goto tesourapc
	if %pc% equ 4 goto lagartopc
	if %pc% equ 5 goto spockpc
	
		:pedrapc
			echo %nome% escolheu : TESOURA!
			echo Computador escolheu : PEDRA!
			echo.
			echo ==DERROTA==
			set /a der = %der% + 1
			goto placar
			
		:papelpc
			echo %nome% escolheu : TESOURA!
			echo Computador escolheu : PAPEL!
			echo.
			echo ==VITORIA==
			set /a vit = %vit% + 1
			goto placar
		
		:tesourapc
			echo %nome% escolheu : TESOURA!
			echo Computador escolheu : TESOURA!
			echo.
			echo ==EMPATE==
			set /a emp = %emp% + 1
			goto placar
		
		:lagartopc
			echo %nome% escolheu : TESOURA!
			echo Computador escolheu : LAGARTO!
			echo.
			echo ==VITORIA==
			set /a vit = %vit% + 1
			goto placar
		
		:spockpc
			echo %nome% escolheu : TESOURA!
			echo Computador escolheu : SPOCK!
			echo.
			echo ==DERROTA==
			set /a der = %der% + 1
			goto placar
			pause

		:lagarto
			set /a pc=(%random% %% 5) +1
			if %pc% equ 1 goto pedrapc	
			if %pc% equ 2 goto papelpc
			if %pc% equ 3 goto tesourapc
			if %pc% equ 4 goto lagartopc
			if %pc% equ 5 goto spockpc
	
		:pedrapc
			echo %nome% escolheu : LEGARTO!
			echo Computador escolheu : PEDRA!
			echo.
			echo ==DERROTA==
			set /a der = %der% + 1
			goto placar
			
		:papelpc
			echo %nome% escolheu : LEGARTO!
			echo Computador escolheu : PAPEL!
			echo.
			echo ==VITORIA==
			set /a vit = %vit% + 1
			goto placar
		
		:tesourapc
			echo %nome% escolheu : LEGARTO!
			echo Computador escolheu : TESOURA!
			echo.
			echo ==DERROTA==
			set /a der = %der% + 1
			goto placar
		
		:lagartopc
			echo %nome% escolheu : LEGARTO!
			echo Computador escolheu : LAGARTO!
			echo.
			echo ==EMPATE==
			set /a emp = %emp% + 1
			goto placar
		
		:spockpc
			echo %nome% escolheu : LEGARTO!
			echo Computador escolheu : SPOCK!
			echo.
			echo ==VITORIA==
			set /a vit = %vit% + 1
			goto placar
pause

:spock
	set /a pc=(%random% %% 5) +1
	if %pc% equ 1 goto pedrapc	
	if %pc% equ 2 goto papelpc
	if %pc% equ 3 goto tesourapc
	if %pc% equ 4 goto lagartopc
	if %pc% equ 5 goto spockpc
	
		:pedrapc
			echo %nome% escolheu : SPOCK!
			echo Computador escolheu : PEDRA!
			echo.
			echo ==VITORIA==
			set /a vit = %vit% + 1
			goto placar
			
		:papelpc
			echo %nome% escolheu : SPOCK!
			echo Computador escolheu : PAPEL!
			echo.
			echo ==DERROTA==
			set /a der = %der% + 1
			goto placar
		
		:tesourapc
			echo %nome% escolheu : SPOCK!
			echo Computador escolheu : TESOURA!
			echo.
			echo ==VITORIA==
			set /a vit = %vit% + 1
			goto placar
		
		:lagartopc
			echo %nome% escolheu : SPOCK!
			echo Computador escolheu : LAGARTO!
			echo.
			echo ==DERROTA==
			set /a der = %der% + 1
			goto placar
		
		:spockpc
			echo %nome% escolheu : SPOCK!
			echo Computador escolheu : SPOCK!
			echo.
			echo ==EMPATE==
			set /a emp = %emp% + 1
			goto placar
			pause

:placar
	echo.
	echo ==== PLACAR DO JOGO ====
	echo  VITORIAS: %vit%
	echo  DERROTAS: %der%
	echo  EMPATES: %emp%
	echo ========================
	echo.
	echo Numero da rodada %cont% de %rodadas%
	echo.
	pause

	if %cont% lss %rodadas% goto inicio else(goto fim)

:fim
	cls
	echo.
	echo ======= PLACAR DO JOGO =======
	echo  VITORIAS: %vit%
	echo  DERROTAS: %der%
	echo  EMPATES: %emp%
	echo ========================
	echo.
	set /p q= Deseja jogar novamente ? [S/N] :
	if %q% equ s goto nome
	if %q% equ n goto exit else(
	echo Opcao invalida !!!
	pause
	goto fim)

