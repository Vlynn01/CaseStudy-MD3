//Tạo hàm lấy Param truyền vào
function GetURLParameter(sParam) {
    var subURL = window.location.search.substring(1)
    var subVariables = subURL.split(`&`);
    for (var i = 0; i < subVariables.length; i++) {
        var sParameterNam = subVariables[i].split(`=`);
        if (sParameterNam[0] == sParam) {
            return sParameterNam[1];
        }
    }
    return false;
}
