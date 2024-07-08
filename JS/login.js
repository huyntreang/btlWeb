// Đối tượng Validator()
function Validator(options) {

    //Xử lý lấy ra class form-message
    function getParent(element, selector) {
        while (element.parentElement) {
            if (element.parentElement.matches(selector)) {
                return element.parentElement;
            }
            element = element.parentElement;
        }
    }

    var selectorRules = {};

    //Hàm thực hiện validate
    function validate(inputElement, rule) {
        var errorElement = getParent(inputElement, options.formGroupSelector).querySelector(options.errorSelector);
        var errorMessage;

        //Lấy ra các rules của selector
        var rules = selectorRules[rule.selector];

        //Lặp qua từng rules và check
        // Nếu có lỗi thì dừng việc kiểm tra
        for (var i = 0; i < rules.length; i++) {
            errorMessage = rules[i](
                formElement.querySelector(rule.selector + ':checked')
            );
            errorMessage = rules[i](inputElement.value);
            if (errorMessage) break;
        }

        if (errorMessage) {
            errorElement.innerText = errorMessage;
            getParent(inputElement, options.formGroupSelector).classList.add('invalid');
        } else {
            errorElement.innerText = '';
            getParent(inputElement, options.formGroupSelector).classList.remove('invalid');
        }

        return !errorMessage;
    }

    //Lấy Element của form cần validate
    var formElement = document.querySelector(options.form);
    if (formElement) {
        // Khi submit form không hiện ra page lỗi nữa
        formElement.onsubmit = function (e) {
            e.preventDefault();

            var isFormValid = true;
            //Lặp qua từng rule và validate
            options.rules.forEach(function (rule) {
                var inputElement = formElement.querySelector(rule.selector);
                var isValid = validate(inputElement, rule);

                if (!isValid) {
                    isFormValid = false;
                }
            });

            if (isFormValid) {

                //Trường hợp Submit với JS
                if (typeof options.onSubmit === 'function') {
                    var enableInputs = formElement.querySelectorAll('[name]');
                    var formValues = Array.from(enableInputs).reduce(function (values, input) {
                        values[input.name] = input.value;
                        return values;
                    }, {});
                    options.onSubmit(formValues);
                }
                //Trường hợp Submit với hành vi mặc định
                else {
                    formElement.submit();
                }
            }
        }

        //Lặp qua mỗi rule và xử lý ( lắng nghe sự kiện blur, input,...)
        options.rules.forEach(function (rule) {

            //Lưu lại các RUle cho mỗi input
            if (Array.isArray(selectorRules[rule.selector])) {
                selectorRules[rule.selector].push(rule.test);
            } else {
                selectorRules[rule.selector] = [rule.test];
            }

            var inputElements = formElement.querySelectorAll(rule.selector);
            Array.from(inputElements).forEach(function (inputElement) {
                //Xử lý trường hợp blur khỏi input
                inputElement.onblur = function () {
                    validate(inputElement, rule);
                }
                // Xử lý mỗi khi người dùng nhập vào input
                inputElement.oninput = function () {
                    var errorElement = getParent(inputElement, options.formGroupSelector).querySelector('.form-message');
                    errorElement.innerText = '';
                    getParent(inputElement, options.formGroupSelector).classList.remove('invalid');
                }
            });

        });
    }
}

//Định nghĩa các rules
//Nguyên tắc của các rule: 
//1. Khi có lỗi thì trả ra mesage lỗi
//2. Khi hợp lệ: không trả ra cái j cả -> undefine
Validator.isRequired = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            return value ? undefined : message || 'Vui lòng nhập trường này!';
            // return value.trim() ? undefined : message || 'Vui lòng nhập trường này!';
        }
    };
}

Validator.isEmail = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            return regex.test(value) ? undefined : message || 'Vui lòng nhập đúng email!';
        }
    }
}

Validator.isConfirmed = function (selector, getConfirmValue, message) {
    return {
        selector: selector,
        test: function (value) {
            return value === getConfirmValue() ? undefined : message || 'Vui lòng nhập lại mật khẩu đúng!';
        }
    }
}

Validator.isCard = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            /*var regex = /^[A-Za-z][0-9]{5}$/;*/
            //var regex = /^[0-9]{12}$/;  // 12 số
            //var idCardPattern = /^[A-Z][!@#$%^&*()_+a-zA-Z]\d{2}$/;   // 1 chữ in hoa, 1 kí tự đặc biệt và 2 số nguyên 
            return regex.test(value) ? undefined : message || 'Vui lòng nhập đúng định dạng căn cước!';
        }
    }
}

Validator.isLogin = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^[0-9]{3}[A-Za-z][A-Za-z][A-Za-z][A-Za-z][!@#$%^&*()_+a-zA-Z]$/;
            //var regex = /^[0-9]{12}$/;  // 12 số
            //var idCardPattern = /^[A-Z][!@#$%^&*()_+a-zA-Z]\d{2}$/;   // 1 chữ in hoa, 1 kí tự đặc biệt và 2 số nguyên 
            return regex.test(value) ? undefined : message || 'Vui lòng nhập đúng định dạng mật khẩu (3 chữ số, 1 kí tự đặc biệt và độ dài =8)!';
        }
    }
}

Validator.minLength = function (selector, min, message) {
    return {
        selector: selector,
        test: function (value) {
            return value.length >= min ? undefined : message || `Vui lòng nhập tối thiểu ${min} kí tư`;
        }
    }
}
