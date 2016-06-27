var arr = $('#yolo').getElementsByTagName('tr'),
    res = '';
for (var i = 0; i < arr.length; i++) {
    var td = arr[i].getElementsByTagName('td');
    if (td.length > 1) res += (',' + td[1].textContent);
}
