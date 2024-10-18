sudo fdisk /dev/sdc << EOF
n
p
1

+1G
n
p
2

+1G
n
p
3

+1G
n
e
4


n
l
5

+1G
n
l
6

+1G
n
l
7

+1G
n
l
8

+1G
n
l
9

+1G
n
l
10

+1G
n
l
11


w
EOF

sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc4
sudo mkfs.ext4 /dev/sdc5
sudo mkfs.ext4 /dev/sdc6
sudo mkfs.ext4 /dev/sdc7
sudo mkfs.ext4 /dev/sdc8
sudo mkfs.ext4 /dev/sdc9
sudo mkfs.ext4 /dev/sdc10
sudo mkfs.ext4 /dev/sdc11

sudo mount /dev/sdc1 /Examenes-UTN/alumno_1/parcial_1
sudo mount /dev/sdc2 /Examenes-UTN/alumno_1/parcial_2
sudo mount /dev/sdc3 /Examenes-UTN/alumno_1/parcial_3
sudo mount /dev/sdc5 /Examenes-UTN/alumno_2/parcial_1
sudo mount /dev/sdc6 /Examenes-UTN/alumno_2/parcial_2
sudo mount /dev/sdc7 /Examenes-UTN/alumno_2/parcial_3
sudo mount /dev/sdc8 /Examenes-UTN/alumno_3/parcial_1
sudo mount /dev/sdc9 /Examenes-UTN/alumno_3/parcial_2
sudo mount /dev/sdc10 /Examenes-UTN/alumno_3/parcial_3
sudo mount /dev/sdc11 /Examenes-UTN/profesores/

sudo bash -c 'cat << EOF >> /etc/fstab
> UUID=0d2ccdd9-9557-4200-8cc7-68e79c5629c9 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0
> UUID=b0d1a776-ddf8-4184-bfb0-a388d091f3d2 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0
> UUID=ca69a617-a42c-4555-93f3-0c5ebe762ed1 /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0
> UUID=34455b9e-a5f7-402e-aec4-7b60dbc36fe0 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0
> UUID=70de8ded-d0f0-4439-b863-6cba5d72fe26 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0
> UUID=a28df26f-d565-4e6a-8462-09f91e4b0aee /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0
> UUID=6e39aafb-3c25-4d54-b7e1-c52f2d7d3da4 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0
> UUID=f52fc10f-d8f7-49b8-bc36-ea6d5354387f /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0
> UUID=f367fbb7-d26f-4b1b-9de5-244af75c2157 /Examenes-UTN/profesores/ ext4 defaults 0 0
> UUID=39c11601-5700-4f4a-831a-ad848269b9b6 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0
> EOF'

