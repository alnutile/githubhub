$(document).ready(
    function(){
        $('a.add_repos').on('click', function(){
            var time = new Date().getTime();
            var regexp = new RegExp($(this).data('id', 'g'));
            $('div.more-repos').append($(this).data('fields'));
            //$(this).before($(this).data('fields').replace(regexp, time));
            console.log(this);
            event.preventDefault();
        });
    }
);