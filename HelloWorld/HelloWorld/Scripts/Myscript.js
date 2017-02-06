$(document).ready(function () {

    $('#click').click(doit);

    function doit(e) {
        e.preventDefault(); $('#hello').fadeOut(500).fadeIn(1000);
        var l = '';
        var u = '<ul>';
        $.ajax({
            url: '/Home/Show',
            type: 'Get',
            data: 'name:"name"',
            success(data)
            {
                console.log('success:' + data);
                $.each(data, function (i, item) {
                    l += '<li>' + new Date(parseInt( (item.dateclick).replace('/Date(',''))) + '</li>'
                })
                u += l + '</ul>'
                $('#time').html(u);
            },

            error: function(){alert('error when loading');}
        });
    }

    $(document).click(function () { $('#time').html('')})
});

