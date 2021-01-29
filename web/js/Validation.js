
// UserName Email Password Mobile


$(".onlytext").on("keyup", function(){
    var valid = /^[a-zA-Z\s-, ]+$/.test(this.value),
        val = this.value;
    
    if(!valid){
       
        
//         $('.Nameerrortext').show();
        this.value = val.substring(0, val.length - 1);
    }
});

function myfunction()
{
//                alert('in fuction');

    var MObNO = $('#MObNO').val();
    var Tpassword = $("#Tpassword").val();
    var password = $("#password").val();
    //var Mobile = document.register.Mobile.value;
//    alert('in fuction' + MObNO);


    var mob = /^[7,8,9]\d{9}$/;

    if (MObNO.match(mob))
    {
        if (Tpassword == password)
        {
            return true;
        } else
        {
            $('#errorpass').show();
        }


    }
    else
    {
//                        alert('Mobile no Should be Correct');
        // $('#MObNO').focus();
        $('#errortext').show();
        // $('.MyPins').show();
//        alert('in false');
        return false;
    }

}





$('#Tpassword').blur(function() {

    var Tpassword = $("#Tpassword").val();
    var password = $("#password").val();

    if (Tpassword == password)
    {
//                        alert("equal");
    } else
    {
//                         alert("not equal");
        $('#errorpass').show();
    }

//                    $.get("Ajax/GetMember.jsp", {fromdate: fromdate, todate: todate}, function(data) {
//                        $('#LDiv').html(data);
//                    });
    //                    location.reload();
});



function myfunction1()
{
                alert('in fuction');

    var MObNO = $('#MObNO1').val();
    var Tpassword = $("#Tpassword1").val();
    var password = $("#password1").val();
    //var Mobile = document.register.Mobile.value;
    alert('in fuction' + MObNO);


    var mob = /^[7,8,9]\d{9}$/;

    if (MObNO.match(mob))
    {
        if (Tpassword == password)
        {
            return true;
        } else
        {
            $('#errorpass1').show();
        }


    }
    else
    {
//                        alert('Mobile no Should be Correct');
        // $('#MObNO').focus();
        $('#errortext').show();
        // $('.MyPins').show();
//        alert('in false');
        return false;
    }

}


$("#MObNO1").on("keyup", function(){
    var valid =/^[0-9]*$/.test(this.value),
        val = this.value;
    
    if(!valid){
       
        
//         $('.Nameerrortext').show();
        this.value = val.substring(0, val.length - 1);
    }
});