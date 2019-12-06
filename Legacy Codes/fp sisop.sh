#!/usr/bin/env bash
loop=1
loop1=1
while [[ loop1 -eq 1 ]]; do
echo "1. KALKULATOR"
echo "2. PROGAM BERGUNA"
echo "3. SELESAI"
read pilih

case $pilih in
  1 )
    while [[ loop -eq 1 ]]; do
    echo "1.PENJUMLAHAN"
    echo "2.PENGURANGAN"
    echo "3.PERKALIAN"
    echo "4.PEMBAGIAN"
    echo "5.PANGKAT"
    echo "6.MODULUS"
    echo "7.AKAR"
    echo "8.KELUAR"
    echo "MAU YANG MANA>>DIPILIH DIPILIH :"
    read pilih1
      case $pilih1 in
        1 )
          echo "INPUTKAN ANGKA PERTAMA :"
          read a
          echo "INPUTKAN ANGKA KEDUA   :"
          read b
          let jumlah=$a+$b
          echo "HASIL PENJULAHAN $a dan $b=$jumlah"
          ;;
        2 )
          echo "INPUTKAN ANGKA PERTAMA"
          read a
          echo "INPUTKAN ANGKA KEDUA"
          read b
          let kurang=$a-$b
          echo "HASIL PENGURANGAN $a dan $b = $kurang"
          ;;
        3 )
          echo "INPUTKAN ANGKA PERTAMA"
          read a
          echo "INPUTKAN ANGKA KEDUA"
          read b
          let kali=$a+$b
          echo "HASIL PERKALIAN $a dan $b = $kali"
          ;;
        4 )
          echo "INPUTKAN ANGKA PERTAMA"
          read a
          echo "INPUTKAN ANGKA KEDUA"
          read b
          let bagi=$a/$b
          echo "HASIL PEMBAGIAN $a dan $b = $bagi"
          ;;
        5 )
          pangkat=1
          echo "INPUTKAN ANGKA YANG YANG MAU DIPANGKATKAN"
          read a
          echo "INPUTKAN PANGKAT"
          read b
          for (( i = 0; i < $b ; i++ )); do
            let pangkat=$pangkat*$a
          done
          echo "HASIL PEMANGKATAN $a^$b = $pangkat"
            ;;
        6 )
          echo "INPUTKAN ANGKA YANG YANG MAU DIMODULUS"
          read a
          echo "INPUTKAN MODULUS"
          read b
          let modulus=$a%$b
          echo "HASIL $a MODULUS $b = $modulus"
            ;;
        7 )
          echo "INPUTKAN ANGKA YANG YANG MAU DIAKAR"
          read a
          for (( i = 1; i <=a; i++ )); do
            akar=$i*$i
            if [[ $akar -eq $a ]]; then
              echo "akar dari $a =$i"

          elif [[ $i -eq $a && $akar != $a ]]; then
              echo "akar tidak ditemukan"
            fi
          done
            ;;
        8 )
          echo "TERIMA KASIH"
          loop=2
      esac
    done
    ;;

    2 )
      loop=1
      while [[ loop -eq 1 ]]; do
      echo "1.MEMBUAT FILE"
      echo "2.MEMBUKA FILE ATAU SOFTWARE"
      echo "3.MERUBAH HAK AKSES BERKAS"
      echo "4.MENGHAPUS FILE"
      echo "5.MENGEDIT FILE"
      echo "6.MENDOWNLOAD FILE"
      echo "7.KELUAR"
      echo "YUK DIPILIH LAGI :"
      read pilih1

      case $pilih1 in
        1 )
          echo "MAU BIKIN FILE YAA......."
          echo "SILAHKAN MASUKKAN NAMA FILE PLUS FORMAT FILENYA EX |p.txt|"
          read f
          mousepad $f
          clear
          ;;
        2 )
          echo "MAU BUKA FILE ATAU SOFTWARE"
          echo "1.file"
          echo "2.software"
          echo "monggo dipilih"
          read pilih2
            if [[ $pilih2 -eq 1 ]]; then
              clear
              ls -l
              echo "cieee mau buka fileee"
              echo "NAMA FILENYA APA"
              read fil
              cat $fil
            fi
            if [[ $pilih2 -eq 2 ]]; then
              clear
              echo "cieee mau buka software"
              echo "NAMA softwarenya APA"
              read fil
              $fil
            fi
            ;;
        3 )
          ls -l
          echo "cieee mau merubah hak akses berkas"
          echo "nama filenya apa"
          read fil
          ls -l $fil
          echo "ketikkan kode hak akses yang mau dirubah"
          read hak
          chmod $hak $fil
          ls -l $fil
          echo "selesai"
          ;;
        4 )
          ls -l
          echo "nama file yang dihapus"
          read fil
          ls -l $fil
          rm  $fil
          ls -l $fil
          echo "yaaaaaa file anda sudah terhapus"
            ;;
        5 )
          ls -l
          echo "MAU NGEDIT FILE APA :"
          read fil
          mousepad $fil
          echo "selesai"
          ;;
        6 )
          echo "APAKAH ANDA TERSAMBUNG INTERNET"
          echo "1.ya"
          echo "2.tidak"
          read net
          if [[ $net -eq 1 ]]; then
            echo "MASUKKAN URL ATAU LINK FILE YANG INGIN DI DOWNLOAD"
            read url
            wget $url
          fi
          if [[ $net -eq 2 ]]; then
            echo "MAAF ANDA HARUS TERSAMBUNG INTERNET DAHULU"
          fi
          ;;
        7 )
          loop=2
      esac
    done
    ;;

    3 )
      exit
      ;;
esac
done
