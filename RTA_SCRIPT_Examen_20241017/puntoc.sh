sudo groupadd grupoprogramadores
sudo groupadd grupotester
sudo groupadd grupoanalistas
sudo groupadd grupodisenadores

sudo useradd -m -s /bin/bash -G grupoprogramadores programadores
sudo useradd -m -s /bin/bash -G grupotester tester
sudo useradd -m -s /bin/bash -G grupoanalistas analistas
sudo useradd -m -s /bin/bash -G grupodisenadores disenadores

sudo chmod 770 /Examenes-UTN/alumno_1
sudo chmod 770 /Examenes-UTN/alumno_2
sudo chmod 770 /Examenes-UTN/alumno_3
sudo chmod 770 /Examenes-UTN/profesores

sudo usermod -aG grupoprogramadores programadores
sudo usermod -aG grupotester tester
sudo usermod -aG grupoanalistas analistas
sudo usermod -aG grupodisenadores disenadores

sudo chown programadores:grupoprogramadores /Examenes-UTN/alumno_1
sudo chown tester:grupotester /Examenes-UTN/alumno_2
sudo chown analistas:grupoanalistas /Examenes-UTN/alumno_3
sudo chown disenadores:grupodisenadores /Examenes-UTN/profesores

sudo su - programadores -c "whoami > /home/parcial1/validar_alumno_1.txt"
sudo su - tester -c "whoami > /home/parcial1/validar_alumno_2.txt"
sudo su - analistas -c "whoami > /home/parcial1/validar_alumno_3.txt"
sudo su - disenadores -c "whoami > /home/parcial1/validar_profesores.txt"
