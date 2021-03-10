
/**
 * Iyan Lucas Duarte Marques 
 * Matrícula: 691360
 * Código dos exercícios 1, 2, 3, 4 e 5b
 * versão 1.0
 */
//import para concatenação e outras manipulações de string
import java.lang.invoke.StringConcatFactory;
//scanner para ler entrada do teclada
import java.util.*;
import java.io.*;

public class exerciciosA {
    // método para mudar decimal para binário
    public static void dec2bin(final int x) {
        // cria array que recebe o resto da operação
        int[] array;
        array = new int[x];
        // variável auxiliar que recebe o valor passado por referencia
        int aux = x;
        // contador para print do array
        int count = 0;
        for (int i = 0; aux > 0; i++) {
            array[i] = aux % 2;
            aux = aux / 2;
            count++;
        }
        // função que printa o binário
        System.out.println("o numero " + x + "em binario eh =");
        for (int i = count - 1; i >= 0; i--) {
            System.out.print(array[i] + "\n");

        }
    }

    // método para mudar binário para decimal
    public static void bin2dec(final int x[], final int count) {
        // cria array que recebe o binario
        int[] array;
        array = new int[x.length];
        // variável auxiliar que calcula a potenciação
        int aux = 0;
        // for para inverter o binario passado por referencia
        for (int i = 0; i < count; i++) {
            array[count - i - 1] = x[i];

        }
        // se a posição do vetor for 1, calcula 2 elevado no ciclo do laço
        // variável auxiliar recebe o valor da potencia
        for (int i = 0; i < count; i++) {
            if (array[i] == 1) {
                aux = aux + (int) Math.pow(2, i);
            }
        }
        System.out.println("o numero em decimal eh = " + aux);

    }

    // método que muda decimal para base personalizada
    public static void dec2base(final int x, final int base) {
        int[] array;
        array = new int[x];
        int aux = x;
        int resto = 0;
        int count = 0;
        /**
         * ifs para cada base base 2, base 4, base 8 e base 16, o numero da base é
         * passado como referencia, mesmo método do dec2Bin
         */
        if (base == 2) {
            for (int i = 0; aux > 0; i++) {
                array[i] = aux % 2;
                aux = aux / 2;
                count++;
            }
            // função que transforma decimal em binário
            System.out.println("o numero " + x + "em binario eh =");
            for (int i = count - 1; i >= 0; i--) {
                System.out.print(array[i] + "\n");

            }
        }

        if (base == 4) {
            for (int i = 0; aux > 0; i++) {
                array[i] = aux % 4;
                aux = aux / 4;
                count++;
            }
            // função que transforma decimal em binário
            System.out.println("o numero " + x + "em base quatro eh =");
            for (int i = count - 1; i >= 0; i--) {
                System.out.print(array[i]);

            }
        }
        if (base == 8) {
            for (int i = 0; aux > 0; i++) {
                array[i] = aux % 8;
                aux = aux / 8;
                count++;
            }
            System.out.println("o numero " + x + "em octal eh =");
            for (int i = count - 1; i >= 0; i--) {
                System.out.print(array[i]);
            }
            /**
             * for para as operação de divisão na base 16 se o resto for maior que 9, a
             * letra correspondente é poliformizada no código ascii e armazenada no vetor,
             * depois é convertida para char no println
             */
        } else if (base == 16) {
            for (int i = 0; aux > 0; i++) {
                resto = aux % 16;
                if (resto > 9) {
                    if (resto == 10) {
                        array[i] = (int) 'A';
                    }
                    if (resto == 11) {
                        array[i] = (int) 'B';
                    }
                    if (resto == 12) {
                        array[i] = (int) 'C';
                    }
                    if (resto == 13) {
                        array[i] = (int) 'D';
                    }
                    if (resto == 14) {
                        array[i] = (int) 'E';
                    }
                    if (resto == 15) {
                        array[i] = (int) 'F';
                    }
                    aux = aux / 16;
                } else {
                    array[i] = resto;
                    aux = aux / 16;
                }
                count++;
            }
            // função que transforma decimal em binário
            System.out.println("o numero " + x + "em base Hexadecimal eh =");
            for (int i = count - 1; i >= 0; i--) {
                if (array[i] > 9) {
                    System.out.print((char) array[i]);
                } else {
                    System.out.print(array[i]);
                }
            }
        }

    }

    // decimal para base personalizada
    public static void bin2base(final int x[], final int base, int count) {
        // cria array que recebe o binario
        int[] array;
        // cria array que recebe o binario, especializado no Hexadecimal
        int[] arrayHex;
        // variável auxiliar que faz as operações de potenciação
        int aux = 0;
        // variável que captura o resto do hexadecimal
        int resto = 0;
        array = new int[x.length];
        /**
         * ifs para cada base base 10, base 4, base 8 e base 16, o numero da base é
         * passado como referencia, mesmo método do bin2dec
         */
        if (base == 10) {

            for (int i = 0; i < count; i++) {
                array[count - i - 1] = x[i];

            }
            for (int i = 0; i < count; i++) {
                if (array[i] == 1) {
                    aux = aux + (int) Math.pow(2, i);
                }
            }
            System.out.println("o numero em decimal eh = " + aux);
        } else if (base == 4) {
            for (int i = 0; i < count; i++) {
                array[count - i - 1] = x[i];

            }
            for (int i = 0; i < count; i++) {
                if (array[i] == 1) {
                    aux = aux + (int) Math.pow(4, i);
                }
            }
            System.out.println("o numero em base quatro eh = " + aux);
        } else if (base == 8) {
            for (int i = 0; i < count; i++) {
                array[count - i - 1] = x[i];

            }
            for (int i = 0; i < count; i++) {
                if (array[i] == 1) {
                    aux = aux + (int) Math.pow(8, i);
                }
            }
            System.out.println("o numero em octal eh = " + aux);
        } else if (base == 16) {
            /**
             * transforma o binario em decimal primeiro, for para as operação de divisão na
             * base 16 se o resto for maior que 9, a letra correspondente é poliformizada no
             * código ascii e armazenada no vetor, depois é convertida para char no println
             */
            for (int i = 0; i < count; i++) {
                array[count - i - 1] = x[i];

            }
            for (int i = 0; i < count; i++) {
                if (array[i] == 1) {
                    aux = aux + (int) Math.pow(2, i);
                }
            }
            arrayHex = new int[aux];
            for (int i = 0; aux > 0; i++) {
                resto = aux % 16;
                if (resto > 9) {
                    if (resto == 10) {
                        arrayHex[i] = (char) 'A';
                    }
                    if (resto == 11) {
                        arrayHex[i] = (char) 'B';
                    }
                    if (resto == 12) {
                        arrayHex[i] = (char) 'C';
                    }
                    if (resto == 13) {
                        arrayHex[i] = (char) 'D';
                    }
                    if (resto == 14) {
                        arrayHex[i] = (char) 'E';
                    }
                    if (resto == 15) {
                        arrayHex[i] = (char) 'F';
                    }
                    aux = aux / 16;
                } else {
                    arrayHex[i] = resto;
                    aux = aux / 16;
                }
                count++;
            }
            // função que transforma decimal em binário
            System.out.println("o numero na base Hexadecimal eh = ");
            for (int i = count - 1; i >= 0; i--) {
                if (arrayHex[i] > 9 && arrayHex[i] > 0) {
                    System.out.print((char) arrayHex[i]);
                } else if (arrayHex[i] < 9 && arrayHex[i] > 0) {
                    System.out.print(arrayHex[i]);
                }
            }
        }

    }

    // método que transforma char em Hexadecimal
    public static void ascii2hex(final String s) {
        for (int i = 0; i < s.length(); i++) {
            System.out.print(Integer.toHexString(s.charAt(i)) + " ");
        }
    }

    // método que transforma Hexadecimal em char
    public static void hex2ascii(final String hex) {
        /**
         * classe StringBuilder ela permite manipular dados de strings dinamicamente
         * nesta função ela recebe os caracteres de forma dinâmica e junta em uma string
         * só
         */
        final StringBuilder builder = new StringBuilder();
        /**
         * try catch para tratamento de erro da string certas strings de hex tem o valor
         * invalido e trava o terminal descobri isso da pior forma possível ;-;
         */
        try {
            for (int i = 0; i < hex.length(); i = +2) {
                /**
                 * for que percorre a string de hexadecimal cria uma substring de tamanho 2
                 * atribui o valor do hexadecimal em decimal (ASCII) transforma o decimal em
                 * char e atribui ele a string do builder
                 */
                final String sub = hex.substring(i, i + 2);
                final int n = Integer.valueOf(sub, 16);
                builder.append((char) n);
            }
            System.out.println("a string convertida:" + builder.toString());
        } catch (final Exception e) { // se der erro printa invalido
            if (hex.length() % 2 != 0) {
                System.out.println("A string HEX é inválida!");
            }
        }

    }

    public static void main(final String[] args) {
        // chamada para o scanner
        final Scanner input = new Scanner(System.in);
        /**
         * variáveis: Flag para parada do menu de correção; Opção do menu lida do
         * teclado; Numero decimal lido do teclado; String para demais bases lida do
         * teclado; Base lida do teclado; Contador para array;
         */
        boolean flag = true;
        final boolean flag2 = true;
        int[] array;
        array = new int[10];
        int op = 0;
        int x = 0;
        String s = "";
        int base = 0;
        int count = 0;
        do {
            System.out.println("\nGostaria de corrigir qual atividade?\n");
            System.out.println("1 - exercício 1a (decimal para bin)");
            System.out.println("2 - exercício 2a (binario para decimal)");
            System.out.println("3 - exercício 3a (decimal para base personalizada)");
            System.out.println("4 - exercício 4a (binario para base personalizada)");
            System.out.println("5 - exercício 5a (ASCII para Hexadecimal)");
            System.out.println("6 - exercício 5av2 (Hexadecimal para ASCII)");
            System.out.println("0 - fecha o programa");
            op = input.nextInt();
            // switch para cada opção do menu
            switch (op) {
                // saída do menu
                case 0:
                    flag = false;
                    break;
                // exercício 1a
                case 1:
                    System.out.println("digite o numero decimal:");
                    x = input.nextInt();
                    dec2bin(x);
                    break;
                // exercício 2a
                case 2:
                    System.out.println("digite o numero binario:");
                    // método alternativo que limpa o buffer
                    clearBuffer(input);
                    /**
                     * for para armazenar o binario no array, precisa digitar um numero de cada vez
                     * qualquer outro numero para a contagem
                     **/

                    for (int i = 0; i < array.length; i++) {
                        x = input.nextInt();
                        if (x == 0 || x == 1) {
                            array[i] = x;
                            count++;
                        } else {
                            i = array.length;
                        }
                    }
                    bin2dec(array, count);
                    break;
                // exercício 3a
                case 3:
                    System.out.println("digite o numero decimal:");
                    x = input.nextInt();
                    System.out.println("digite a base:");
                    base = input.nextInt();
                    dec2base(x, base);
                    break;
                // exercício 4a
                case 4:
                    System.out.println("digite o numero binario:");
                    // método alternativo que limpa o buffer
                    clearBuffer(input);
                    for (int i = 0; i < array.length; i++) {
                        x = input.nextInt();
                        if (x == 0 || x == 1) {
                            array[i] = x;
                            count++;
                        } else {
                            i = array.length;
                        }
                    }
                    System.out.println("digite a base:");
                    base = input.nextInt();
                    bin2base(array, base, count);
                    break;
                // exercício 5a, primeira parte
                case 5:
                    System.out.println("digite a string:");
                    // método alternativo que limpa o buffer
                    clearBuffer(input);
                    s = input.nextLine();
                    ascii2hex(s);
                    break;
                // exercício 5a, segunda parte
                case 6:
                    System.out.println("digite a string:");
                    // método alternativo que limpa o buffer
                    clearBuffer(input);
                    s = input.nextLine();
                    hex2ascii(s);
                    break;

                default:
                    System.out.println("valor invalido! insira novamente");
                    break;
            }

        } while (flag != false);
    }

    // método que limpa o buffer
    private static void clearBuffer(final Scanner scanner) {
        // se tem algo no buffer, faz um nextline puxando o quem la
        if (scanner.hasNextLine()) {
            scanner.nextLine();
        }
    }

}
