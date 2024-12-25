function handleComplete(event:Event):void {
  // Assuming 'data' is an XML object
  var xml:XML = event.target.data;

  // Accessing a non-existent child node will throw an error.
  var value:String = xml.nonExistentNode.text();
}