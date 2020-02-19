#!/bin/sh
#Shell菜单演示
# wget https://raw.githubusercontent.com/itwarlock/demo/master/getapp.sh
function menu ()
{
    cat << EOF
----------------------------------------
|***************菜单主页***************|
----------------------------------------
`echo -e "\033[35m 1. 从 github 下载常用客户端app到nginx的 html目录 /usr/share/nginx/html \033[0m"`
`echo -e "\033[35m 2. 从 gitee  下载常用客户端app到nginx的 html目录 /usr/share/nginx/html \033[0m"`
`echo -e "\033[35m 3. 主菜单\033[0m"`
`echo -e "\033[35m 4. 退出\033[0m"`
EOF
read -p "请输入对应数字：" num1
case $num1 in
    1)
      echo "从 github 下载常用客户端app到nginx的 html目录 /usr/share/nginx/html"
      download_app_from_github
      ;;
    2)
      echo "从 gitee 下载常用客户端app到nginx的 html目录 /usr/share/nginx/html"
      download_app_from_gitee
      ;;
    3)
      clear
      menu
      ;;
    4)
      exit 0
esac
}

function download_app_from_github ()
{
    cd  /usr/share/nginx/html
    wget  https://raw.githubusercontent.com/itwarlock/demo/master/app/Kitsunebi_v1.8.apk
    wget  https://raw.githubusercontent.com/itwarlock/demo/master/app/v2rayNG_1.1.15.apk
    wget  https://raw.githubusercontent.com/itwarlock/demo/master/app/IOS_Shadowrocket_2.1.12.ipa
    wget  https://raw.githubusercontent.com/itwarlock/demo/master/app/Kitsunebi.ipa
    wget  https://raw.githubusercontent.com/itwarlock/demo/master/app/Shadowrocket-2.1.11.ipa
    echo "下载完成"
    menu
}

function download_app_from_github ()
{
    cd  /usr/share/nginx/html
    wget  https://raw.githubusercontent.com/itwarlock/demo/master/app/Kitsunebi_v1.8.apk
    wget  https://raw.githubusercontent.com/itwarlock/demo/master/app/v2rayNG_1.1.15.apk
    wget  https://raw.githubusercontent.com/itwarlock/demo/master/app/IOS_Shadowrocket_2.1.12.ipa
    wget  https://raw.githubusercontent.com/itwarlock/demo/master/app/Kitsunebi.ipa
    wget  https://raw.githubusercontent.com/itwarlock/demo/master/app/Shadowrocket-2.1.11.ipa
    echo "下载完成"
    menu
}

function menu_demo ()
{
    cat << EOF
----------------------------------------
|***************ELE主页****************|
----------------------------------------
`echo -e "\033[35m 1)苹果\033[0m"`
`echo -e "\033[35m 2)魅族\033[0m"`
`echo -e "\033[35m 3)小米\033[0m"`
`echo -e "\033[35m 4)返回主菜单\033[0m"`
EOF
read -p "请输入对应产品的数字：" num2
case $num2 in
    1)
      echo "the is iphone X ￥8888!!"
      curl http://members.3322.org/dyndns/getip

      eleproduct_menu
      ;;
    2)
      echo "the is meizu pro6 ￥2600!!"
      eleproduct_menu
      ;;
    3)
      echo "the is xiaomi MXA2 ￥4290!!"
      eleproduct_menu
      ;;
    4)
      clear
      menu
      ;;
    *)
      echo "the is fail!!"
      eleproduct_menu
esac
}

function car_menu ()
{
    cat << EOF
----------------------------------------
|***************CAR主页****************|
----------------------------------------
`echo -e "\033[35m 1)大众\033[0m"`
`echo -e "\033[35m 2)宝马\033[0m"`
`echo -e "\033[35m 3)梅赛德斯奔驰\033[0m"`
`echo -e "\033[35m 4)返回主菜单\033[0m"`
EOF
read -p "请输入对应产品的数字：" num3
case $num3 in
    1)
      echo "the is dazon ￥120000!!"
      car_menu
      ;;
    2)
      echo "the is BMW ￥230000!!"
      car_menu
      ;;
    3)
      echo "the is bench ￥460000!!"
      car_menu
      ;;
    4)
      clear
      menu
      ;;
    *)
      echo "the is fail!!"
      car_menu
esac
}
menu