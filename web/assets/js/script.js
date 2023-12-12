/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function toggleChat() {
    var chatBox = document.getElementById("chat-box");
    if (chatBox.classList.contains("chat-hidden")) {
        chatBox.classList.remove("chat-hidden");
    } else {
        chatBox.classList.add("chat-hidden");
    }
}

