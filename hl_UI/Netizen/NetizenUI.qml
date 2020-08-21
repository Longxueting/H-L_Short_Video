import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0

import "./ModifyInfo"

Page {
    width: 360
    height: 640

    Page{
        id: mePage
        visible: true
        width: 360
        height: 640
        property alias stackView: stackView

        StackView {
            id: stackView
            initialItem: mypage
            anchors.fill: parent
        }

        NetizenInfoUI{
            id: mypage
        }

//        Component{
//            id:view
//            ModifyInfoUI{
//                id: message
//            }
//        }
    }
}
