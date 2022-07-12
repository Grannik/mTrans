#!/bin/bash
source "sTrans.sh"
# это цвет текста списка перед курсором при значении 0 в переменной  UNMARK(){ $e "\e[0m";}
 UNMARK(){ $e "\e[0m";}
 MARK(){ $e "\e[1;37m";}
#
 HEAD()
{
 for (( a=2; a<=39; a++ ))
  do
   TPUT $a 1
        $E "\e[2m\xE2\x94\x82                                                                                \xE2\x94\x82\e[0m";
  done
              TPUT  1 1;$E "\e[0m\e[2m┌────────────────────────────────────────────────────────────────────────────────┐\e[0m";UNMARK;
              TPUT  2 3;$E "\e[36mDisplay options                                            Опции отображения\e[0m";
              TPUT  3 1;$E "\e[2m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
              TPUT 27 1;$E "\e[2m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
              TPUT 28 3;$E "\e[36mAudio options                                                    Аудио опции\e[0m";
              TPUT 37 1;$E "\e[2m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
              TPUT 38 3;$E "\e[2mUp \xE2\x86\x91 \xE2\x86\x93 Down Select Enter\e[0m";
}
 FOOT(){ MARK;TPUT 40 1;$E "\033[0m\033[2m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";UNMARK;}
#
  M0(){ TPUT  4 3; $e "Подробный режим                                                    \e[32m -verbose \e[0m";}
  M1(){ TPUT  5 3; $e "Краткий режим. Показывать только наиболее релевантный перевод     \e[32m -b -brief \e[0m";}
  M2(){ TPUT  6 3; $e "Словарный режим. Покажите определение исходного слова        \e[32m -d -dictionary \e[0m";}
  M3(){ TPUT  7 3; $e "Идентификация языка. Идентифицированный язык исходного текста     \e[32m -identify \e[0m";}
  M4(){ TPUT  8 3; $e "Показывать исходный текст или нет. (по умолчанию: да)    \e[32m -show-original Y/n \e[0m";}
  M5(){ TPUT  9 3; $e "Показать фонетическое обозначение текста или нет   \e[32m -show-original-phonetics \e[0m";}
  M6(){ TPUT 10 3; $e "Показывать перевод или нет. (по умолчанию: да)        \e[32m -show-translation Y/n \e[0m";}
  M7(){ TPUT 11 3; $e "Фонетическое обозначение перевода или нет   \e[32m -show-translation-phonetics Y/n \e[0m";}
  M8(){ TPUT 12 3; $e "Показать подсказку или нет. (по умолчанию: да)     \e[32m -show-prompt-message Y/n \e[0m";}
  M9(){ TPUT 13 3; $e "Показать исходный и целевой языки или нет               \e[32m -show-languages Y/n \e[0m";}
 M10(){ TPUT 14 3; $e "Показать словарную статью исходного текста    \e[32m -show-original-dictionary y/N \e[0m";}
 M11(){ TPUT 15 3; $e "Показать словарную статью перевода или нет             \e[32m -show-dictionary Y/n \e[0m";}
 M12(){ TPUT 16 3; $e "Показывать альтернативные переводы или нет           \e[32m -show-alternatives Y/n \e[0m";}
 M13(){ TPUT 17 3; $e "Укажите ширину экрана для заполнения                      \e[32m -w NUM -width NUM \e[0m";}
 M14(){ TPUT 18 3; $e "Укажите размер отступа (количество пробелов), (по умолчанию: 4) \e[32m -indent NUM \e[0m";}
 M15(){ TPUT 19 3; $e "Укажите тему для использования. (по умолчанию: default)     \e[32m -theme FILENAME \e[0m";}
 M16(){ TPUT 20 3; $e "Не используйте никакую другую тему, кроме темы по умолчанию       \e[32m -no-theme \e[0m";}
 M17(){ TPUT 21 3; $e "Не используйте escape-коды ANSI                                    \e[32m -no-ansi \e[0m";}
 M18(){ TPUT 22 3; $e "Не использовать автокоррекцию                               \e[32m -no-autocorrect \e[0m";}
 M19(){ TPUT 23 3; $e "Не преобразовывать двунаправленные тексты                          \e[32m -no-bidi \e[0m";}
 M20(){ TPUT 24 3; $e "Всегда преобразовывать двунаправленные тексты                         \e[32m -bidi \e[0m";}
 M21(){ TPUT 25 3; $e "Не писать предупреждающие сообщения в stderr                       \e[32m -no-warn \e[0m";}
 M22(){ TPUT 26 3; $e "Вместо этого распечатайте необработанный ответ API                    \e[32m -dump \e[0m";}
#
 M23(){ TPUT 29 3; $e "Послушайте перевод                                                 \e[32m -p -play \e[0m";}
 M24(){ TPUT 30 3; $e "Прослушайте исходный текст                                           \e[32m -speak \e[0m";}
 M25(){ TPUT 31 3; $e "Укажите рассказчика и прослушайте перевод          \e[32m -n VOICE -narrator VOICE \e[0m";}
 M26(){ TPUT 32 3; $e "Укажите аудиоплеер для использования и прослушайте перевод  \e[32m -player PROGRAM \e[0m";}
 M27(){ TPUT 33 3; $e "Не слушайте перевод                                                \e[32m -no-play \e[0m";}
 M28(){ TPUT 34 3; $e "Не переводите ничего при использовании -speak                 \e[32m -no-translate \e[0m";}
 M29(){ TPUT 35 3; $e "Download the audio to the current directory                 \e[32m -download-audio \e[0m";}
 M30(){ TPUT 36 3; $e "Скачать аудио в указанный файл                  \e[32m -download-audio-as FILENAME \e[0m";}
#
 M31(){ TPUT 39 3; $e "Exit                                                                         ";}
LM=31
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
 Подробный режим. Покажите исходный текст и его наиболее подходящий перевод, затем
 его фонетическое обозначение (если есть), затем его альтернативные переводы (если
 есть) или его определение в словаре (если это слово). В большинстве случаев этот
 параметр не нужен, так как подробный режим включен по умолчанию.
\e[32m \e[0m";ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;echo -e "
 Краткий режим:\e[32m trans -t ru -b 'text'\e[0m
 Показывать только наиболее релевантный перевод или его фонетическое обозначение.
";ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;echo -e "
 Словарный режим. Покажите определение исходного слова в словаре
\e[32m \e[0m";ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;echo -e "
 Идентификация языка. Показать идентифицированный язык исходного текста
\e[32m \e[0m";ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo -e "
 Показать фонетическое обозначение исходного текста или нет. (по умолчанию: да)
\e[32m \e[0m";ES;fi;;
  6) S=M6;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  7) S=M7;SC; if [[ $cur == enter ]];then R;echo -e "
 Показать фонетическое обозначение перевода или нет. (по умолчанию: да)
\e[32m \e[0m";ES;fi;;
  8) S=M8;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  9) S=M9;SC; if [[ $cur == enter ]];then R;echo -e "
 Показать исходный и целевой языки или нет. (по умолчанию: да)
\e[32m \e[0m";ES;fi;;
 10) S=M10;SC;if [[ $cur == enter ]];then R;echo -e "
 Показать словарную статью исходного текста или нет. (по умолчанию: нет)
 Эта опция включена в режиме словаря.
\e[32m \e[0m";ES;fi;;
 11) S=M11;SC;if [[ $cur == enter ]];then R;echo -e "
 Показать словарную статью перевода или нет. (по умолчанию: да)
\e[32m \e[0m";ES;fi;;
 12) S=M12;SC;if [[ $cur == enter ]];then R;echo -e "
 Показывать альтернативные переводы или нет. (по умолчанию: да)
\e[32m \e[0m";ES;fi;;
 13) S=M13;SC;if [[ $cur == enter ]];then R;echo -e "
 Укажите ширину экрана для заполнения.
 Этот параметр переопределяет настройку переменной среды \$COLUMNS.
\e[32m \e[0m";ES;fi;;
 14) S=M14;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 15) S=M15;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 16) S=M16;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 17) S=M17;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 18) S=M18;SC;if [[ $cur == enter ]];then R;echo -e "
 Не использовать автокоррекцию. (если по умолчанию механизм перевода)
\e[32m \e[0m";ES;fi;;
 19) S=M19;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 20) S=M20;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 21) S=M21;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 22) S=M22;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
#
 23) S=M23;SC; if [[ $cur == enter ]];then R;echo -e "
 Послушайте перевод:
\e[32m trans :ru 'text' -play\e[0m
 У вас должен быть установлен хотя бы один из поддерживаемых аудиоплееров:
 mplayer, mpv или mpg123 для потоковой передачи из механизма преобразования текста
 в речь Google. В противном случае вместо этого можно использовать локальный син-
тезатор речи (скажем, в macOS, например, в Linux или других платформах).
";ES;fi;;
 24) S=M24;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 25) S=M25;SC; if [[ $cur == enter ]];then R;echo -e "
 Укажите рассказчика и прослушайте перевод.
 Общие значения для этой опции — мужской и женский.
\e[32m \e[0m";ES;fi;;
 26) S=M26;SC; if [[ $cur == enter ]];then R;echo -e "
 Укажите аудиоплеер для использования и прослушайте перевод.
 Параметр -play попытается использовать mplayer, mpv или mpg123 по умолчанию,
 поскольку известно, что эти проигрыватели работают с потоковыми URL-адресами.
 Не все аудиоплееры с командной строкой могут работать таким образом.
 Используйте эту опцию, только если у вас есть собственные предпочтения.
 Этот параметр переопределяет настройку переменной окружения \$PLAYER.
\e[32m \e[0m";ES;fi;;
 27) S=M27;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 28) S=M28;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 29) S=M29;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 30) S=M30;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
#
 31) S=M31;SC;if [[ $cur == enter ]];then R;exit 0;fi;;
 esac;POS;done
