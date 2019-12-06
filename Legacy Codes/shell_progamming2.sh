#!/bin/bash
while [[ nomor==1 ]]; do
opsi=("1.KALKULATOR" "2.EXIT" );
echo "1.KALKULATOR";
echo "2.EXIT";
echo "Masukkan nomor pilihan anda";
read nomor;
   case "$nomor" in
     1 )
     echo "ANDA MEMASUKI MODE PENJUMLAHAN"
     echo "MASUKKAN INPUT BILANGAN ACUAN :"
     read A
     echo "MASUKKAN BATASAN LOOP :"
     read B
        echo "penjumlahan";
        for (( i = 1; i <=$B; i++ )); do
                     let jumlah=$A+$i
                     echo "$A+$i=$jumlah"
          done
          echo "pengurangan";
          for (( i = 1; i <=$B; i++ )); do
                     let kurang=$A-$i
                     echo "$A+$i=$jumlah"
          done
          echo "pembagian";
          for (( i = 1; i <=$B; i++ )); do
                       let bagi=$A/$i
                       echo "$A/$i=$bagi"
            done
            echo "perkalian";
            for (( i = 1; i <=$B; i++ )); do
                       let kali=$A*$i
                       echo "$A*$i=$kali"
            done
       ;;
       2 )
        break;
         ;;
     esac
done
