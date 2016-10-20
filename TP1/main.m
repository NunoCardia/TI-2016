function main()
    disp('Primeiro trabalho de Teoria de Informacao');
    while(1)
            reply = input('Introduza o numero do exercicio que quer consultar: ','s');
        switch (reply)
            case '3'
                ex3
            case '4'
                ex4
            case '5'
                ex5;
            case '6b'
                ex6b
            case '6c'
                ex6c
            case 'exit'
                return;
            otherwise
                disp('Exercicio nao reconhecido');
        end
    end
end
