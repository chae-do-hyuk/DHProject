$(document).ready(function(){
    
    $('.content-info .content-btn a:first-child').click(function(){
        $('.modal_wrap').show();
        $('#sc_modal').show();
    });

    $('.content-info .content-btn a:last-child').click(function(){
        $('.modal_wrap').show();
        $('#sc_modal2').show();
    });

   

    $('.modal_closebtn').click(function(){
        $(this).parent().hide();
        $('.modal_wrap').hide();
    });

    $('.choice_okbtn').click(function(){
        $('#sc_modal2').hide();
        $('.sc_modal_process').show();
    });

    $('.okbtn').click(function(){
        $('.sc_modal_process').hide();
        $('.content-info').find("input,li, div, a").prop("disabled",true);

    });

    $('.nobtn').click(function(){
        $('.sc_modal_process').hide();
        
    })

    $('.submit-box a').click(function(){
        $(this).parent().parent().hide();
        $('.modal_wrap').hide();
    });

   
        $("#time_btn").click(function(){
            // e.preventDefault();
        $('.tab>#tab2').show();
    });
    $('.content-info .content-btn1 a').click(function(){
        $('.modal_wrap').show();
        $('.sc_modal_process2').show();
        
    });

    $('.nobtn1').click(function(){
        $(this).parent().parent().hide();
        $('.modal_wrap').hide();
        
    });
});