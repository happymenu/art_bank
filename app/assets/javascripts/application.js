//
//= require jquery
//= require jquery_ujs
//= require ckeditor/init
//= require jquery.anystretch.min
//= require bootstrap.min
//= require jquery.min
//= require_tree .


// from http://stackoverflow.com/questions/486896/adding-a-parameter-to-the-url-with-javascript
//
function merge_parameter_and_refresh(key, value) {
        key = escape(key); value = escape(value);

        var kvp = document.location.search.substr(1).split('&');
        if (kvp == '') {
            document.location.search = '?' + key + '=' + value;
        }
        else {
            var i = kvp.length; var x; while (i--) {
                x = kvp[i].split('=');
                if (x[0] == key) {
                    x[1] = value;
                    kvp[i] = x.join('=');
                    break;
                }
            }
            if (i < 0) { kvp[kvp.length] = [key, value].join('='); }
            //this will reload the page, it's likely better to store this until finished
            document.location.search = kvp.join('&');
        }
    }
