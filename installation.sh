wget https://github.com/mothur/mothur/releases/download/v1.38.1.1/Mothur.linux_64.zip
unzip Mothur.linux_64.zip
wget https://www.mothur.org/w/images/1/15/Silva.seed_v123.tgz
tar -zxvf Silva.seed_v123.tgz
wget https://www.mothur.org/w/images/6/6c/Trainset14_032015.rdp.tgz
tar -zxvf Trainset14_032015.rdp.tgz
git clone https://github.com/metajinomics/mothur_pipeline.git
./mothur/mothur mothur_pipeline/pcr_silva_seed_v123.batch
gunzip *.gz
ls *R1*.fastq | cut -f1 -d "." > groupnames.txt
ls *R1*.fastq > forward.txt
ls *R2*.fastq > reverse.txt
paste groupnames.txt forward.txt > temp.txt
paste temp.txt reverse.txt > stability.files
