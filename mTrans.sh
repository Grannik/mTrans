#!/bin/bash
 source "sTrans.sh"
 UNMARK(){ $e "\e[0m";}
 MARK(){ $e "\e[30;47m";}
#
 HEAD()
{
 for (( a=2; a<=40; a++ ))
          do
              TPUT $a 1
                        $E "\e[47;30m│\e[0m                                                                                \e[47;30m│\e[0m";
          done
              TPUT  1 1;$E "\033[0m\033[47;30m┌────────────────────────────────────────────────────────────────────────────────┐\033[0m"
              TPUT  3 3;$E "\e[1;36m*** trans ***\e[0m";
              TPUT  4 3;$E "\e[2mПереводчик командной строки с использованием Google Translate,\e[0m";
              TPUT  5 3;$E "\e[2mBing Translator, Яндекс.Переводчик и др.\e[0m";
              TPUT  6 1;$E "\e[47;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
              TPUT 16 1;$E "\e[47;30m├\e[0m\e[1;30m─ Oпции ───────────────────────────────────────────────────────────── Options ──\e[0m\e[47;30m┤\e[0m";
              TPUT 17 3;$E "\e[36m Information options                                    Параметры информации\e[0m";
              TPUT 26 3;$E "\e[36m Translator options                                     Варианты переводчика\e[0m";
              TPUT 28 3;$E "\e[36m I/O options                                              Опции ввода-вывода\e[0m";
              TPUT 31 3;$E "\e[36m Text preprocessing options       Параметры предварительной обработки текста\e[0m";
              TPUT 35 1;$E "\e[47;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
              TPUT 37 1;$E "\e[47;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
              TPUT 38 1;$E "\e[47;30m├\e[0m\e[2m─ Up \xE2\x86\x91 \xE2\x86\x93 Down Select Enter ─────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
}
 FOOT(){ MARK;TPUT 41 1;$E "\033[0m\033[47;30m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";UNMARK;}
#
  M0(){ TPUT  7 3; $e " Установка                                                          \e[32m Install \e[0m";}
  M1(){ TPUT  8 3; $e " Kраткий обзор                                                     \e[32m Synopsis \e[0m";}
  M2(){ TPUT  9 3; $e " Описание                                                       \e[32m Description \e[0m";}
  M3(){ TPUT 10 3; $e " Exit Status                                                    \e[32m Exit Status \e[0m";}
  M4(){ TPUT 11 3; $e " Авторы                                                             \e[32m Authors \e[0m";}
  M5(){ TPUT 12 3; $e " Сообщение об ошибках                                        \e[32m Reporting Bugs \e[0m";}
  M6(){ TPUT 13 3; $e " Дополнительная документация                          \e[32m Further Documentation \e[0m";}
  M7(){ TPUT 14 3; $e " Файлы                                                                \e[32m Files \e[0m";}
  M8(){ TPUT 15 3; $e " Окружающая среда                                               \e[32m Environment \e[0m";}
#
  M9(){ TPUT 18 3; $e " Print version and exit                                         \e[32m -V -version \e[0m";}
 M10(){ TPUT 19 3; $e " Print help message and exit                                       \e[32m -H -help \e[0m";}
 M11(){ TPUT 20 3; $e " Show man page and exit                                             \e[32m -M -man \e[0m";}
 M12(){ TPUT 21 3; $e " Распечатайте справочную таблицу всех языков и кодов          \e[32m -T -reference \e[0m";}
 M13(){ TPUT 22 3; $e " Распечатайте справочную таблицу всех языков и кодов  \e[32m -R -reference-english \e[0m";}
 M14(){ TPUT 23 3; $e " Распечатать сведения о языках и выйти                 \e[32m -L CODES -list CODES \e[0m";}
 M15(){ TPUT 24 3; $e " Перечислите доступные механизмы перевода и выйдите        \e[32m -S -list-engines \e[0m";}
 M16(){ TPUT 25 3; $e " Проверить наличие обновлений этой программы                    \e[32m -U -upgrade \e[0m";}
#
 M17(){ TPUT 27 3; $e " Укажите механизм перевода для использования       \e[32m -e ENGINE -engine ENGINE \e[0m";}
#
 M18(){ TPUT 29 3; $e " Укажите входной файл                           \e[32m -i FILENAME -input FILENAME \e[0m";}
 M19(){ TPUT 30 3; $e " Укажите выходной файл                         \e[32m -o FILENAME -output FILENAME \e[0m";}
#
 M20(){ TPUT 32 3; $e " Рассматривайте все аргументы как одно предложение        \e[32m -j -join-sentence \e[0m";}
 M21(){ TPUT 33 3; $e "\e[36m Пейджинг терминала, просмотр, сетевые, параметры языковых предпочтений и др \e[0m";}
 M22(){ TPUT 34 3; $e "\e[36m Display and audio options                         Отображения и aудио опции \e[0m";}
#
 M23(){ TPUT 36 3; $e " Grannik Git                                                                 ";}
#
 M24(){ TPUT 39 3; $e " Exit                                                                        ";}
LM=24
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ R;HEAD;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
# Функция возвращения в меню
     ES(){ MARK;$e " ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
  0) S=M0;SC; if [[ $cur == enter ]];then R;echo -e "
 В свежих дистрибутивах версия Translate Shell 0.9.5 и 0.9.6. Поэтому просто:
\e[32m sudo apt install translate-shell\e[0m

\e[32m sudo apt-get install translate-shell\e[0m

 загружаем с git (0.9.6):\e[32m
 wget git.io/trans
 chmod +x ./trans
 sudo cp trans /usr/bin/
\e[0m
 Translate Shell брать отсюда:\e[36m https://github.com/soimort/translate-shell\e[0m
\e[32m
 git clone https://github.com/soimort/translate-shell && cd translate-shell
 make
 sudo make install
\e[0m
 В ArchLinux/Manjaro:
\e[32m yaourt -S translate-shell-git
\e[0m";ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m
 trans [OPTIONS] [SOURCE]:[TARGETS] [TEXT]...
\e[0m";ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;echo -e "
 Этот инструмент переводит текст на любой язык из командной строки, используя ме-
 ханизм перевода, такой как Google Translate, Bing Translator и Яндекс.Переводчик.
 Каждый аргумент, который не является допустимым параметром, обрабатывается как
 ТЕКСТ, подлежащий переводу. Если ни ТЕКСТ, ни входной файл не указаны аргумента-
 ми командной строки, программа будет читать и переводить со стандартного ввода.
";ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m 0\e[0m Успешный перевод.
\e[32m 1\e[0m Error.
";ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;echo -e " Mort Yao:\e[36m soi@mort.ninja\e[0m";ES;fi;;
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo -e "\e[36m https://github.com/soimort/translate-shell/issues\e[0m";ES;fi;;
  6) S=M6;SC; if [[ $cur == enter ]];then R;echo -e "\e[36m https://github.com/soimort/translate-shell/wiki\e[0m";ES;fi;;
  7) S=M7;SC; if [[ $cur == enter ]];then R;echo -e "
 Скрипт инициализации. (для всей системы):
\e[36m /etc/translate-shell\e[0m

 Скрипт инициализации. (зависит от пользователя):
\e[36m \$HOME/.translate-shell/init.trans\e[0m

 Скрипт инициализации. (зависит от пользователя):
\e[36m \$XDG_CONFIG_HOME/translate-shell/init.trans\e[0m

 Скрипт инициализации. (Текущий каталог)
\e[36m ./.trans\e[0m
";ES;fi;;
  8) S=M8;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m PAGER      \e[0m Эквивалент параметра         -pager
\e[32m BROWSER    \e[0m Эквивалентно настройке опции -browser
\e[32m PLAYER     \e[0m Equivalent to option setting -player
\e[32m HTTP_PROXY \e[0m Эквивалентно настройке опции -proxy
\e[32m USER_AGENT \e[0m Эквивалентно настройке опции -user-agent
\e[32m HOME_LANG  \e[0m Эквивалентно настройке опции -lang
\e[32m SOURCE_LANG\e[0m Эквивалентно настройке опции -source
\e[32m TARGET_LANG\e[0m Эквивалентно настройке опции -target
";ES;fi;;
  9) S=M9;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m trans -v\e[0m
#
\e[32m trans -version\e[0m
";ES;fi;;
 10) S=M10;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m trans -H\e[0m
#
\e[32m trans -help\e[0m
";ES;fi;;
 11) S=M11;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m trans -M\e[0m
#
\e[32m trans -man\e[0m
";ES;fi;;
 12) S=M12;SC;if [[ $cur == enter ]];then R;echo -e "
 Распечатайте справочную таблицу всех поддерживаемых языков и кодов и выйдите:
\e[32m trans -T\e[0m
 Названия языков отображаются в их эндонимах (название языка в самом языке).
";ES;fi;;
 13) S=M13;SC;if [[ $cur == enter ]];then R;echo -e "
 Распечатайте справочную таблицу всех поддерживаемых языков и кодов и выйдите.
 Названия языков отображаются на английском языке.
";ES;fi;;
 14) S=M14;SC;if [[ $cur == enter ]];then R;echo -e "
 Распечатать сведения о языках и выйти.
 При указании двух и более языковых кодов объединяйте их знаком плюс +
";ES;fi;;
 15) S=M15;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m \e[0m";ES;fi;;
 16) S=M16;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 17) S=M17;SC;if [[ $cur == enter ]];then R;echo -e "
 Укажите механизм перевода для использования. (по умолчанию: Google):
";ES;fi;;
 18) S=M18;SC;if [[ $cur == enter ]];then R;echo -e "
 Укажите входной файл:
\e[32m trans :es file:///home/user/text.txt\e[0m
 Исходный текст для перевода будет прочитан из входного файла:
\e[32m trans :ru -i text.txt\e[0m
 вместо стандартного ввода.
";ES;fi;;
 19) S=M19;SC;if [[ $cur == enter ]];then R;echo -e "
 Укажите выходной файл:
\e[32m trans :ru 'Translate text' -o file.txt\e[0m
 Переводы будут записаны в выходной файл вместо стандартного вывода:
\e[32m trans :ru -i textEn.txt -o textRu.txt\e[0m
";ES;fi;;
 20) S=M20;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 21) S=M21;SC;if [[ $cur == enter ]];then R;./nTransB.sh;ES;fi;;
 22) S=M22;SC;if [[ $cur == enter ]];then R;./nTransA.sh;ES;fi;;
#
 23) S=M23;SC;if [[ $cur == enter ]];then R;echo -e "
 Di 12 Jul 2022
 s - source      file источник
 m - menu        file меню
 n - simple menu file простое меню
 l - bash list   file лист
 t - text        file текстовый файл

 mTrans писание утилиты trans. Переводчик командной строки с использованием
 Google Translate, Bing Translator, Яндекс.Переводчик и др.
 Asciinema:  \e[36m https://asciinema.org/a/508026\e[0m
 Github:     \e[36m https://github.com/GrannikOleg/mTrans\e[0m
 Gitlab:     \e[36m https://gitlab.com/grannik/mtrans\e[0m
 Sourceforge:\e[36m https://sourceforge.net/projects/mmtrans/files/\e[0m
 Notabug:    \e[36m https://notabug.org/Grannikoleg/mTrans\e[0m
 Codeberg:   \e[36m https://codeberg.org/Grannik/mTrans\e[0m
 Bitbucket:  \e[36m \e[0m
 Framagit:   \e[36m https://framagit.org/GrannikOleg/mtrans\e[0m
 Gitea:      \e[36m https://try.gitea.io/Grannik/mTrans\e[0m
";ES;fi;;
 24) S=M24;SC;if [[ $cur == enter ]];then R;clear;ls -l;exit 0;fi;;
 esac;POS;done
