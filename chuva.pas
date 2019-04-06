//-----------------------------------------------------
//|   DESENVOLVIDO POR JOÃO VITOR                     |
//|       www.github.com/keowu                        |
//|        DEIXE OS CREDITOS !                        |
//|    BOM DIVERTIMENTO, ESTUDO !                     |
//|    Não me pergunte porque eu fiz isso             |
//|    Eu também não sei                              |
//-----------------------------------------------------
program chuva;
uses crt, Graph, MMSystem;
var
principal, loop, loop2, loop3, abacate, abacate2, descer, descer2, op: integer;
procedure chuva;
begin
for principal := 1 to 100 do
begin
   //chuva descendo
   textcolor(blue);  //seta a cor da gota de chuva
   loop3 := 50;
   for loop2 := 1 to 20 do
    begin
     loop3 := loop3 + 1;
       gotoxy(loop3, loop2); write('.');
       clrscr;
    end;
      //fundo
   for loop := 50 to 90 do
    begin
         abacate := loop + abacate;
         descer := loop - 49;
         gotoxy(abacate, descer); write('.');
         abacate2 := loop + abacate2;
         descer2 := loop - 49;
         gotoxy(abacate2, descer2); write('.');
         // clrscr;  //configurações adicione esse clrscr; para aumentar a velocidade de execução e diminuir a quantidade de pontos
    end;
 end;
end;
//som da chuva
procedure somdechuva;
begin
  SndPlaySound('.\chuva.wav', SND_ASYNC + SND_LOOP);
end;
//programa
procedure programa;
begin
  textcolor(red);
  writeln('---------------------------');
  writeln('bem vindo !');
  writeln('Desenvolvido por Joao Vitor');
  writeln('www.github.com/keowu');
  writeln('Divirta-se :D');
  writeln('Selecione uma opcao: ');
  writeln('1- iniciar chuva ou 2- sair');
  writeln('---------------------------');
  read(op);

  if (op = 1) then
  begin
       textcolor(white);
       somdechuva;
       chuva;
    end
   else if(op = 2) then
   begin
        writeln('Saindo ........');
        exit;
   end
    else
     writeln('erro opção não existe !');
end;

begin
  programa;
  readln();
end.

