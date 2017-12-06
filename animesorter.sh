
move_folder(){
    mkdir -p $1
    mv $2 $1
}




for f in *; do 
    if [[ -d $f ]]; then #if f is a directory
       first="${f:0:1}"
       
          if [[ "$first" == +(a|b|c|A|B|C) ]] 
            then    
                    echo "Moving ${f} to A-C" 
                    move_folder "./A-C" "${f}"
                    
                             
          elif [[ "$first" == +(d|e|f|D|E|F) ]]
               then 
                    echo "Moving ${f} to D-F" 
                    move_folder "./D-F" "${f}"

          elif [[ "$first" == +(g|h|i|G|H|I) ]]
               then 
                    echo "Moving ${f} to G-I" 
                    move_folder "./G-I" "${f}"

          elif [[ "$first" == +(j|k|l|J|K|L) ]]
               then 
                    echo "Moving ${f} to J-L" 
                    move_folder "./J-L" "${f}"

         elif [[ "$first" == +(m|n|o|M|N|O) ]]
               then 
                    echo "Moving ${f} to M-O" 
                    move_folder "./M-O" "${f}"       

         elif [[ "$first" == +(p|q|r|P|Q|R) ]]
               then 
                    echo "Moving ${f} to P-R" 
                    move_folder "./P-R" "${f}"    
     
         elif [[ "$first" == +(s|t|u|S|T|U) ]]
               then 
                    echo "Moving ${f} to S-U" 
                    move_folder "./S-U" "${f}"

         elif [[ "$first" == +(v|w|x|V|W|X) ]]
               then 
                    echo "Moving ${f} to V-X" 
                    move_folder "./V-X" "${f}"   

         elif [[ "$first" == +(y|z|Y|Z) ]]
               then 
                    echo "Moving ${f} to Y&Z" 
                    move_folder "./Y&Z" "${f}"
        
        elif [[ "$first" == +(1|2|3|4|5|6|7|8|9|0) ]]
               then 
                    echo "Moving ${f} to #"
                    move_folder "./#" "${f}"
       
          else 
              echo  
          fi
    fi
done
    echo "done"



