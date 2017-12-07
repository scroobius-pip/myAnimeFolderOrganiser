
move_folder(){
    mkdir -p $1
    mv "${2}" $1 ||  (mv """${2}"/*"" "./${1}/${2}" && rmdir "${2}")  #tries to move all files in directory if directory already exists
    
}

echo_move(){
echo " Moving $(tput setaf 2) ${1}  $(tput sgr0) to $(tput setaf 4)${2}$(tput sgr0)"
}





for f in *; do 
    if [[ -d $f ]] && [[ "$f" != +("A-C"|"D-F"|"G-I"|"J-L"|"M-O"|"P-R"|"S-U"|"V-X"|"Y&Z"|"#") ]] ; then  #[ "$f" != "A-C" ] && [ "$f" != "D-F" ] && [ "$f" != "G-I" ] && [ "$f" != "J-L" ] && [ "$f" != "M-O" ] && [ "$f" != "P-R" ] && [ "$f" != "S-U" ] && [ "$f" != "V-X" ] && [ "$f" != "Y&Z" ] && [ "$f" != "#" ]#if f is a directory
       first="${f:0:1}"
       
          if [[ "$first" == +(a|b|c|A|B|C) ]] 
            then    
                    # echo "Moving ${f} to A-C" 
                    echo_move "${f}" "./A-C"
                    move_folder "./A-C" "${f}"
                    
          elif [[ "$first" == +(d|e|f|D|E|F) ]]
               then 
                    echo_move "${f}" "./D-F"
                    move_folder "./D-F" "${f}"

          elif [[ "$first" == +(g|h|i|G|H|I) ]]
               then 
                    echo_move "${f}" "./G-I"
                    move_folder "./G-I" "${f}"

          elif [[ "$first" == +(j|k|l|J|K|L) ]]
               then 
                    echo_move "${f}" "./J-L" 
                    move_folder "./J-L" "${f}"

         elif [[ "$first" == +(m|n|o|M|N|O) ]]
               then 
                    echo_move "${f}" "./M-O" 
                    move_folder "./M-O" "${f}"       

         elif [[ "$first" == +(p|q|r|P|Q|R) ]]
               then 
                    echo_move "${f}" "./P-R" 
                    move_folder "./P-R" "${f}"    
     
         elif [[ "$first" == +(s|t|u|S|T|U) ]]
               then 
                    echo_move "${f}" "./S-U" 
                    move_folder "./S-U" "${f}"

         elif [[ "$first" == +(v|w|x|V|W|X) ]]
               then 
                    echo_move "${f}" "./V-X" 
                    move_folder "./V-X" "${f}"   

         elif [[ "$first" == +(y|z|Y|Z) ]]
               then 
                    echo_move "${f}" "./Y-Z" 
                    move_folder "./Y&Z" "${f}"
        
        elif [[ "$first" == +(1|2|3|4|5|6|7|8|9|0) ]]
               then 
                    echo_move "${f}" "./#"
                    move_folder "./#" "${f}"
       
          else 
              echo  "$(tput setaf 1) Skipping  $(tput sgr0) $(tput setaf 4)${f}$(tput sgr0)"
          fi
    fi
done
    echo "done"



