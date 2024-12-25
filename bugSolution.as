function handleComplete(event:Event):void {
  var xml:XML = event.target.data;

  // Check if the node exists before accessing it
  if (xml.nonExistentNode) {
    var value:String = xml.nonExistentNode.text();
  } else {
    // Handle the case where the node is missing
    trace('Node "nonExistentNode" not found.');
    // Use a default value or take appropriate action
    var value:String = "";
  }
}  
//Alternatively, use e4x's exception handling
try{
  var value:String = xml.nonExistentNode.text();
}catch(e:Error){
 trace('Error accessing node: '+ e.message);
 var value:String = "";
}
