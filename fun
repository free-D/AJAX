function AJAX(){
  //创建XHR
  var xhr=null;
  window.XMLHttpRequest?xhr=new XMLHttpRequest():xhr=new ActiveXObject("Microsoft.XMLHttp");
  
  //监听事件
  xhr.onreadystatechange=function(){
    if(xhr.readyState==4&&xhr.status==200){
      var res = xhr.responseXML;
      console.log(res);
    }
  };
  
  //打开链接
  xhr.open("get",url,true);
  //发生请求
  xhr.send(null);
}
