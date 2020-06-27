import QtQuick 2.12
import QtQuick.Window 2.12



Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("ListView")


    ListModel{
        id:myModel
        ListElement{
            name:"Ogorki"
            price:"4.50"
        }
        ListElement{
            name:"Salata"
            price:"3.33"
        }
        ListElement{
            name:"Ziemniaki"
            price:"4.25"
        }
        ListElement{
            name:"Pomarancze"
            price:"4.70"
        }
        ListElement{
            name:"Papryka"
            price:"12.33"
        }
        ListElement{
            name:"Jablka"
            price:"4.99"
        }
    }

    ListView{
        width: 180;
        height: 100;
        model: myModel
        delegate: Text {
            text:if(area.containsPress){
                     return "wcisnieto"
                 }
                 else return name+" "+price

            MouseArea{
                id:area
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton

            }
        }


    }

}

