({
    handleChange : function(component, event, helper) {
        alert(event.getParam('colct'));
        component.set("v.colorChangeText",event.getParam('colct'));


    }
})
