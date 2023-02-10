//
//  index.js
//  Frontend version 1.0
//  Created by Ingenuity i/o on 2023/02/06
//
//  no description
//  Copyright © 2022 Ingenuity i/o. All rights reserved.
//

//server connection
function isConnectedToServerChanged(isConnected)
{
    if (isConnected)
        document.getElementById("connectedToServer").style.background = 'green';
    else
        document.getElementById("connectedToServer").style.background = 'red';
}


IGS.netSetServerURL("ws://localhost:5000");
IGS.agentSetName("Frontend");
IGS.observeWebSocketState(isConnectedToServerChanged);

IGS.definitionSetVersion("1.0");



IGS.outputCreate("coin1", iopTypes.IGS_STRING_T, "");
IGS.outputCreate("coin2", iopTypes.IGS_STRING_T, "");
IGS.outputCreate("timestamp_from", iopTypes.IGS_INTEGER_T, 0);
IGS.outputCreate("timestamp_to", iopTypes.IGS_INTEGER_T, 0);
IGS.outputCreate("generate", iopTypes.IGS_IMPULSION_T, "");


//Initialize agent

//actually start ingescape
IGS.start();


//
// HTML example
//

document.getElementById("serverURL").value = IGS.netServerURL();
document.getElementById("name").innerHTML = IGS.agentName();

function executeAction() {
    //add code here if needed
}

//update websocket config
function setServerURL() {
    IGS.netSetServerURL(document.getElementById("serverURL").value);
}

//write outputs
function setcoin1Output() {
    IGS.outputSetString("coin1", document.getElementById("coin1_output").value);
}

function setcoin2Output() {
    IGS.outputSetString("coin2", document.getElementById("coin2_output").value);
}

function settimestamp_fromOutput() {
    IGS.outputSetInt("timestamp_from", Number(document.getElementById("timestamp_from_output").value));
}

function settimestamp_toOutput() {
    IGS.outputSetInt("timestamp_to", Number(document.getElementById("timestamp_to_output").value));
}

function setgenerateOutput() {
    IGS.outputSetImpulsion("generate");
}

