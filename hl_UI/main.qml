import QtQuick 2.0
import QtQuick.Controls 2.12
import "./Login"

ApplicationWindow {
    visible: true
    width: 360
    height: 640

    Component{
        id: login
        LoginUI{}
    }

    StackView{
        id: stackView
        initialItem: login
        anchors.fill: parent
    }

}
