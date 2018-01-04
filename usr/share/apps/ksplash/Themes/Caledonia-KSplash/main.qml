//Caledonia KSplash theme in QML v1.9 was made by Malcer <malcer[at]gmx[dot]com> <caledonia.sourceforge.net> <malcer.deviantart.com>. 
//
//Some rights reserved. This work is licensed under a Creative Commons Attribution-ShareAlike 3.0 License. | 2015
//
//https://creativecommons.org/licenses/by-sa/3.0/

import Qt 4.7

Item {
    id: main

    width: screenSize.width
    height: screenSize.height

    property int stage
    property int iconSize: (screenSize.width <= 1024) ? 32 : 64  
    
    onStageChanged: {
        if (stage == 1) {
 
            background.opacity = 1
 
	    spin.opacity = 1
 
        }
        if (stage == 2) {
 

	    spin.opacity = 1

        }
        if (stage == 3) {
 
            
	    spin.opacity = 1 

        }
        if (stage == 4) {
 
	    spin.opacity = 1
 
        }
        if (stage == 5) {

            
	    spin.opacity = 1 
 
        }
        if (stage == 6) {
 
	    spin.opacity = 1 
 
        }
    }

//

    Image {
        id: background
	source: "images/background.jpg"
	 anchors.fill: parent
 

        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }

        opacity: 0
 
    }
    
    FontLoader {
         source: "fonts/OpenSans-Light.ttf"
	 }

        Text {	
        text:Qt.formatDateTime(new Date(),"dddd hh:mm")
	font.pointSize: 42
	color: "#f2f2f2"
	opacity:0.87
	font { family: "OpenSans Light"; capitalization: Font.Capitalize}
	x: (parent.width - width) / 2 
	y: (parent.height - height) / 2.3
	
	} 
    
    Image {
        id: spin

        height: 45
        width: 45
        smooth: true

        x: (background.width - width) / 2
        y: (background.height - height) / 1.70

        source: "images/spin.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 3000; easing { type: Easing.InOutQuad } } }

        NumberAnimation {
            id: animateRotation
            target: spin
            properties: "rotation"
            from: 0
            to: 360
            duration: 700

            loops: Animation.Infinite
            running: true
        }

    }


}

  
