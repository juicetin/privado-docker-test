# This works
wget https://github.com/Privado-Inc/privado-cli/releases/download/v2.2.9/privado-linux-amd64.tar.gz
tar -xvf privado-linux-amd64.tar.gz
git clone https://github.com/saurabh-sudo/BankingSystem-Backend.git ../BankingSystem-Backend
./privado scan --debug ../BankingSystem-Backend
