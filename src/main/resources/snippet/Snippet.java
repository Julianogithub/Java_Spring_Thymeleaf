package snippet;

public class Snippet {
		* Comandos para subir a aplicação no GitHub pela a primeira vez *
	
	echo "# Nome do Progeto " >> README.md
	git init
	git config --global user.name "NOME"
	git config --global user.email "git@gmail"
	git status
	git add .
	git status
	git commit -m "Nome do Progeto"
	git log
	git push -u origin main
	_____________________________________________________________________________________________
		* Comandos para subir a aplicação no GitHub pela a primeira vez * Se der erro Passo 2
	
	git remote add irigin https://github.com/*usuari do git*/*nome do progeto*
	git branch -M main
	git push -u origin main
	
	_____________________________________________________________________________________________
	
		* Comandos para subir a aplicação no GitHub sempre tiver uma alteração no progeto *
	
	git status
	git add .
	git status
	git commit -m "NOME do que foi feito no Progeto"
	git log
	git push
	
	_____________________________________________________________________________________________
	
		* Comandos para resetar o commit errado *
	
	git reset HEAD~1
	
	_____________________________________________________________________________________________
	
		* Comandos para sair do git log *
	
	O botão q , ele deverá sair do log
}
