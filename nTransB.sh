#!/bin/bash
source "sTrans.sh"
# это цвет текста списка перед курсором при значении 0 в переменной  UNMARK(){ $e "\e[0m";}
 UNMARK(){ $e "\e[0m";}
 MARK(){ $e "\e[1;37m";}
#
 HEAD()
{
 for (( a=2; a<=31; a++ ))
  do
   TPUT $a 1
        $E "\e[2m\xE2\x94\x82                                                                                \xE2\x94\x82\e[0m";
  done
              TPUT  1 1;$E "\e[0m\e[2m┌────────────────────────────────────────────────────────────────────────────────┐\e[0m";UNMARK;
              TPUT  2 3;$E "\e[36mTerminal paging and browsing optionsv Пейджинг терминала и параметры просмотра\e[0m";
              TPUT  8 1;$E "\e[2m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
              TPUT  9 3;$E "\e[36mNetworking options                                              Параметры сети\e[0m";
              TPUT 14 1;$E "\e[2m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
              TPUT 15 3;$E "\e[36mLanguage preference options                              Варианты выбора языка\e[0m";
              TPUT 20 1;$E "\e[2m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
              TPUT 21 3;$E "\e[36mInteractive shell options                     Параметры интерактивной оболочки\e[0m";
              TPUT 25 1;$E "\e[2m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
              TPUT 26 3;$E "\e[36mOther options                                                     Другие опции\e[0m";
              TPUT 29 1;$E "\e[2m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
              TPUT 30 3;$E "\e[2mUp \xE2\x86\x91 \xE2\x86\x93 Down Select Enter\e[0m";
}
 FOOT(){ MARK;TPUT 32 1;$E "\033[0m\033[2m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";UNMARK;}
#
  M0(){ TPUT  3 3; $e "Просмотр перевода в пейджере терминала                             \e[32m -v -view \e[0m";}
  M1(){ TPUT  4 3; $e "Укажите терминальный пейджер для использования               \e[32m -pager PROGRAM \e[0m";}
  M2(){ TPUT  5 3; $e "Не просматривать перевод в терминальном пейджере         \e[32m -no-view -no-pager \e[0m";}
  M3(){ TPUT  6 3; $e "Укажите используемый веб-браузер                           \e[32m -browser PROGRAM \e[0m";}
  M4(){ TPUT  7 3; $e "Не открывайте веб-браузер                                       \e[32m -no-browser \e[0m";}
#
  M5(){ TPUT 10 3; $e "Использовать HTTP-прокси на заданном порту    \e[32m -x HOST:PORT -proxy HOST:PORT \e[0m";}
  M6(){ TPUT 11 3; $e "Укажите User-Agent для идентификации           \e[32m -u STRING -user-agent STRING \e[0m";}
  M7(){ TPUT 12 3; $e "Подключаться только к адресам IPv4                     \e[32m -4 -ipv4 -inet4-only \e[0m";}
  M8(){ TPUT 13 3; $e "Подключаться только к адресам IPv6                     \e[32m -6 -ipv6 -inet6-only \e[0m";}
#
  M9(){ TPUT 16 3; $e "Укажите свой домашний язык                      \e[32m -l CODE -hl CODE -lang CODE \e[0m";}
 M10(){ TPUT 17 3; $e "Укажите исходный язык          \e[32m -s CODES -sl CODES -source CODES -from CODES \e[0m";}
 M11(){ TPUT 18 3; $e "Укажите целевой язык             \e[32m -t CODES -tl CODES -target CODES -to CODES \e[0m";}
 M12(){ TPUT 19 3; $e "Простой альтернативный способ указать исходный язык      \e[32m [SOURCE]:[TARGETS] \e[0m";}
#
 M13(){ TPUT 22 3; $e "Запустите интерактивную оболочку                     \e[32m -I -interactive -shell \e[0m";}
 M14(){ TPUT 23 3; $e "Запустите интерфейс GNU Emacs для интерактивной оболочки          \e[32m -E -emacs \e[0m";}
 M15(){ TPUT 24 3; $e "Не вызывайте rlwrap при запуске интерактивной оболочки.          \e[32m -no-rlwrap \e[0m";}
#
 M16(){ TPUT 27 3; $e "Не загружайте никаких сценариев инициализации                      \e[32m -no-init \e[0m";}
 M17(){ TPUT 28 3; $e "Конец опций                                                              \e[32m -- \e[0m";}
#
 M18(){ TPUT 31 3; $e "Exit                                                                         ";}
LM=18
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
 Просмотр перевода в пейджере терминала (меньше, больше или больше всего)
\e[32m \e[0m";ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;echo -e "
 Укажите терминальный пейджер для использования и просмотрите перевод.
 Эта опция переопределяет настройку переменной окружения \$PAGER.
\e[32m \e[0m";ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;echo -e "
 Укажите используемый веб-браузер.
 Этот параметр переопределяет настройку переменной среды \$BROWSER.
\e[32m \e[0m";ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
#
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo -e "
 Использовать HTTP-прокси на заданном порту. Этот параметр переопределяет настрой-
 ку переменных среды \$HTTP_PROXY и \$http_proxy.
\e[32m \e[0m";ES;fi;;
  6) S=M6;SC; if [[ $cur == enter ]];then R;echo -e "
 Укажите User-Agent для идентификации.
 Этот параметр переопределяет настройку переменных среды \$USER_AGENT.
\e[32m \e[0m";ES;fi;;
  7) S=M7;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  8) S=M8;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  9) S=M9;SC; if [[ $cur == enter ]];then R;echo -e "
 Укажите свой домашний язык (язык, который вы хотели бы видеть для отображения
 подсказок в переводе). Этот параметр влияет только на отображение в подробном ре-
 жиме (все, кроме исходного и целевого языков, будет отображаться на вашем домаш-
 нем языке). Эта опция не работает в кратком режиме. Этот параметр является необя-
 зательным. Когда его настройка опущена, будет использоваться английский язык.
 Этот параметр переопределяет настройку переменных среды:
\e[32m \$LC_ALL\e[0m,\e[32m \$LANG\e[0m и\e[32m \$HOME_LANG\e[0m";ES;fi;;
 10) S=M10;SC;if [[ $cur == enter ]];then R;echo -e "
 Укажите исходный язык (языки) (язык (языки) исходного текста).
 При указании двух и более языковых кодов объединяйте их знаком плюс \e[32m+\e[0m
 Этот параметр является необязательным. При отсутствии его настройки язык исходно-
 го текста будет определяться автоматически (с возможностью ошибочной идентифика-
 ции). Этот параметр переопределяет настройку переменной среды:\e[32m \$SOURCE_LANG\e[0m.
";ES;fi;;
 11) S=M11;SC;if [[ $cur == enter ]];then R;echo -e "
 Укажите целевой язык language(s) (the language(s) of translated text):
\e[32m trans -t ru 'text'\e[0m
 При указании двух и более языковых кодов объединяйте их знаком плюс \e[32m+\e[0m. Этот пара-
 метр является необязательным. Когда его настройка опущена, все будет переведено
 на английский язык. Этот параметр переопределяет настройку переменных среды:
\e[32m \$LC_ALL\e[0m,\e[32m \$LANG\e[0m и\e[32m \$TARGET_LANG\e[0m.
";ES;fi;;
 12) S=M12;SC;if [[ $cur == enter ]];then R;echo -e "
 Более простой альтернативный способ указать исходный язык и целевой язык
 (языки) — использовать форматированную строку быстрого доступа:
 •\e[32m SOURCE-CODE:TARGET-CODE\e[0m
 •\e[32m SOURCE-CODE:TARGET-CODE1+TARGET-CODE2+...\e[0m
 •\e[32m SOURCE-CODE=TARGET-CODE\e[0m
 •\e[32m SOURCE-CODE=TARGET-CODE1+TARGET-CODE2+...\e[0m
 Разделители\e[32m :\e[0m и\e[32m u003d\e[0m могут использоваться взаимозаменяемо:
\e[32m trans :ru 'text'\e[0m
 Либо SOURCE, либо TARGETS могут быть опущены,
 но символ-разделитель должен быть сохранен.
";ES;fi;;
#
 13) S=M13;SC;if [[ $cur == enter ]];then R;echo -e "
 Запустите интерактивную оболочку, по возможности вызывая rlwrap
 (если не указан параметр -no-rlwrap).
\e[32m \e[0m";ES;fi;;
 14) S=M14;SC;if [[ $cur == enter ]];then R;echo -e "
 Эта опция не требуется и не может использоваться вместе с\e[32m -I\e[0m или\e[32m -no-rlwrap\e[0m.
";ES;fi;;
 15) S=M15;SC;if [[ $cur == enter ]];then R;echo -e "
 Не вызывайте rlwrap при запуске интерактивной оболочки. Эта опция полезна,
 когда ваш тип терминала не поддерживается rlwrap (например, emacs).
";ES;fi;;
 16) S=M16;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 17) S=M17;SC;if [[ $cur == enter ]];then R;echo -e "
 Конец опций.
 Все аргументы после этой опции обрабатываются как ТЕКСТ, подлежащий переводу.
";ES;fi;;
#
 18) S=M18;SC;if [[ $cur == enter ]];then R;exit 0;fi;;
 esac;POS;done
