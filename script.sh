echo "Welcome to flutter testing"
echo
echo "[1] 테스트 커버리지 실행"
echo
read -p "Run: " selection

case $selection in

    1)
    echo "테스트 커버리지 실행"
    dart run :coverage
    ;;

    *)
    echo "Unknown command!!"
    ;;

esac
