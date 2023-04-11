function Validator(formSelector) {

    function getparent(element, selector) {
        while (element.parentElement) {
            if (element.parentElement.matches(selector)) {
                return element.parentElement;
            }
            element = element.parentElement;
        }
    }

    var formRules = {};

    /*
        * Quy uoc tao rules
            - Co loi return lai nerror message
            - neu k co loi return undefined
    */
    var validatorRules = {
        required: function (value) {
            return value ? undefined : 'Please input this field.';
        },
        email: function (value) {
            var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            return regex.test(value) ? undefined : 'Please input correct email.';
        },
        min: function (min) {
            return function (value) {
                return value.length >= min ? undefined : 'Please input at least 6 characters.';
            }
        }
    };



    //Lay ra form element trong DOM theo 'formSelector'
    var formElement = document.querySelector(formSelector);
    
    //chi xu ly khi co form element trong DOM
    if (formElement) {

        var inputs = formElement.querySelectorAll('[name][rules]');

        for (var input of inputs) {

            var rules = input.getAttribute('rules').split('|');
            for(var rule of rules){

                var rulesInfo;
                var isRuleHasValue = rule.includes(':');

                if (rule.includes(':')) {
                    rulesInfo = rule.split(':');
                    // console.log(rulesInfo);
                    rule = rulesInfo[0];
                }

                var ruleFunc = validatorRules[rule];

                if (isRuleHasValue) {
                    ruleFunc = ruleFunc(rulesInfo[1]);
                }

                if (Array.isArray(formRules[input.name])) {
                    formRules[input.name].push(ruleFunc);
                }else{
                    formRules[input.name] = [ruleFunc];
                }
            }

            //lang nghe su kien de validator vd blur change,....
            input.onblur = handleValidate;
            input.oninput = handleClearError;
        }

        // Ham thuc hien validator
        function handleValidate (even) {
            // console.log(formRules[even.target.name]);
            var rules = formRules[even.target.name];
            var errorMessage;

            for (var rule of rules) {
                errorMessage = rule(even.target.value);
                if (errorMessage) break;
            }

            // rules.find(function (rule) {
            //     errorMessage = rule(even.target.value);
            //     return errorMessage;
            // });
           
            //co loi thi hien thi message ra ui
            if (errorMessage) {
                var formGroup = getparent(even.target, '.form-group');
                
                if (formGroup ){
                    formGroup.querySelector('.form-control').classList.add('invalid');
                    var formMessage = formGroup.querySelector('.form-message');
                    if (formMessage) {
                        formMessage.innerText = errorMessage;
                    }
                }
            }
            return !errorMessage;
        }

        //clear message error
        function handleClearError (even) {
            var formGroup = getparent(even.target, '.form-group');
            if (formGroup.querySelector('.form-control').classList.contains('invalid')) {
                formGroup.querySelector('.form-control').classList.remove('invalid');

                var formMessage = formGroup.querySelector('.form-message');
                    if (formMessage) {
                        formMessage.innerText = '';
                    }
            }
        }

        // console.log(formRules);
    }

    // Xu ly hanh vi submit form
    formElement.onsubmit = function (even) {
        even.preventDefault();

        var inputs = formElement.querySelectorAll('[name][rules]');
        var isValid = true;

        //check co loi
        for (var input of inputs) {
            if (!handleValidate({target: input})) {
                isValid = false;
            }
        }
        
        //khi khong co loi thi submit form
        if (isValid) {
            formElement.submit();
        }
    }
}