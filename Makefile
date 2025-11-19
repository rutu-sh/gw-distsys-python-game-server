deploy:
	@echo "1. Downloading source code"
	@echo "   Running command: git clone https://github.com/rutu-sh/gw-distsys-python-game-server.git"
	@git clone https://github.com/rutu-sh/gw-distsys-python-game-server.git > /dev/null 2>&1 || true

	@echo "2. Installing python venv support"
	@echo "   Running command: sudo apt install -y python3-venv"
	@sudo apt install -y python3-venv > /dev/null 2>&1

	@echo "3. Switching into project directory: gw-distsys-python-game-server/src"
	@echo "   Running command: cd gw-distsys-python-game-server/src"

	@cd gw-distsys-python-game-server/src && \
		echo "4. Creating virtual environment" && \
		echo "   Running command: python3 -m venv .venv" && \
		python3 -m venv .venv > /dev/null 2>&1 && \
		\
		echo "5. Activating the virtual environment" && \
		echo "   Running command: source .venv/bin/activate" && \
		. .venv/bin/activate > /dev/null 2>&1 && \
		\
		echo "6. Installing requirements" && \
		echo "   Running command: pip install -r requirements.txt" && \
		pip install -r requirements.txt > /dev/null 2>&1 && \
		\
		echo "7. Launching the server" && \
		echo "   Running command: gunicorn --bind 0.0.0.0:8080 main:app" && \
		gunicorn --bind 0.0.0.0:8080 main:app > /dev/null 2>&1
