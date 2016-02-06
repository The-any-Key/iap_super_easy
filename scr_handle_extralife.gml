/// scr_handle_extralife(state, product, extra data 1);
// =============
// DO NOT CHANGE
// =============
var state=argument[0];
var product=argument[1];
var extra_data_1;
var return_data="";
// Get more data if provided
if argument_count>1 {
    extra_data_1=argument[1];
}
if argument_count>1 {
    extra_data_1=argument[1];
}
// =============

switch (state)
{
    case "Init globals and default values":
        // Will run on game start
        // Init globals default values for this buy here
        // And set return_data to send back value to secure storage (if you set use secure save in text file)
        // ===========
        // CHANGE HERE
        // ===========
        global.startingLives = 3;
        // ===========
        return_data=global.startingLives;
        // ===========
        break;
    case "Load":
        // Will run on game start
        // Will load the data from the secure file
        // If you have set the text file to use 
        // the secure file in this product
        // extra_data_1 holds the loaded data
        // ===========
        // CHANGE HERE
        // ===========        
        global.startingLives = extra_data_1;
        // ===========
        break;
    case "Buy Failed":
        // Will run when a buy failed
        // Show a error message or something here
        // ===========
        // CHANGE HERE
        // ===========        
        show_message_async("Extra Life purchase failed!");
        // ===========   
    case "Buy Success":
        // Will run when on buy success
        // Show a error message or something here
        // extra_data_1 holds the current saved data (if you set use secure save in text file)
        // And set return_data to send back value to iap engine
        // ===========
        // CHANGE HERE
        // ===========        
        global.startingLives++;
        // ===========
        return_data=global.startingLives;    
        // ===========                     
}

// =============
// DO NOT CHANGE
// =============
return return_data;
