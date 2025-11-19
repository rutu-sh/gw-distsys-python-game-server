
deploy:
	@echo "1. Downloading source code"
	@echo "   Running command: git clone https://github.com/rutu-sh/gw-distsys-python-game-server.git"
	@git clone https://github.com/rutu-sh/gw-distsys-python-game-server.git > /dev/null
	
	@echo "2. Installing virtual environment support for python" 
	@echo "   Running command: sudo apt install -y python3-venv"
	@sudo apt install -y python3-venv > /dev/null
	
	@echo "3. Switching directory to ~/gw-distsys-python-game-server/src"
	@echo "   Running command: cd ~/gw-distsys-python-game-server/src"
	@cd ~/gw-distsys-python-game-server/src > /dev/null
	
	@echo "4. Creating the virtual environment"
	@echo "   Running command: python3 -m venv .venv"
	@python3 -m venv .venv > /dev/null 
	
	@echo "5. Activating the virtual environment"
	@echo "   Running command: source .venv/bin/activate"
	@source .venv/bin/activate > /dev/null 
	
	@echo "6. Installing requirements"
	@echo "   Running command: pip3 install -r requirements.txt"
	@pip3 install -r requirements.txt
	
	@echo "7. Launching the server"
	@echo "   Running command: gunicorn --bind 0.0.0.0:8080 main:app"
	@gunicorn --bind 0.0.0.0:8080 main:app





