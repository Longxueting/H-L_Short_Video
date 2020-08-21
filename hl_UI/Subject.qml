import QtQuick 2.12
import QtQuick.Controls 2.5
import "./Message"
import "./Netizen"
import "./Attention"
import "./PlayVideo"
import "./PostVideo"
Page {
    visible: true
    width: 360
    height: 640
//    title: qsTr("Tabs")
    property alias footBar: tabBar
    property var i:1

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        PlayVideoUI{
            id: myhome
        }
        AttentionUI{
            id: myfollow
        }
        PostVideoUI{

        }
        MessageUI{

        }
        NetizenUI{

        }
        onCurrentIndexChanged: {
            if(currentIndex == 0){
                myhome.stopPlay.play()
                myfollow.loader.source = ""
            }else if(currentIndex == 1){
                myhome.stopPlay.pause()
                myfollow.loader.source = "Follow.qml"
            }else{
                myhome.stopPlay.pause()
                myfollow.loader.source = ""
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            id: playvideo
            Rectangle{
                width: 72
                height: 40
                color: "black"
                Text {
                    id: text1
                    anchors.centerIn: parent
                    text: qsTr("首页")
                    color: "white"
                }
            }
        }
        TabButton {
            id: attention
            Rectangle{
                width: 72
                height: 40
                color: "black"
                Text {
                    id: text2
                    anchors.centerIn: parent
                    text: qsTr("关注")
                    color: "white"
                }
            }

        }
        TabButton {
            id: shootVideo
            Rectangle{
                width: 72
                height: 40
                color: "transparent"

                Image {
                    id: shoot
                    width: 72
                    height: 40
                    anchors.centerIn: parent
                    source: "file:///run/media/root/study/H&L/UI/shoot.jpg"
                }
            }
        }
        TabButton {
            id:message
            Rectangle{
                width: 72
                height: 40
                color: "black"
                Text {
                    id: text3
                    anchors.centerIn: parent
                    text: qsTr("消息")
                    color: "white"
                }
            }
        }
        TabButton {
            id: netizen
            Rectangle{
                width: 72
                height: 40
                color: "black"
                Text {
                    id: text4
                    anchors.centerIn: parent
                    text: qsTr("我")
                    color: "white"
                }
//                MouseArea{
//                    anchors.fill: parent
//                    onClicked: {
//                        client.needUserImag()
//                    }
//                }
            }

            onClicked: {
                client.needUserImag(i)
                i++;
            }
        }
    }
}
