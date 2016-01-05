// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
console.log('money never sleeps');

$(function(){
    $('#total-price').currency_widget(); // currency widget with default options
    $('#total-price').currency_widget({ editable_amount: false }); // don't let the visitor change the amount to convert
    $('#total-price').currency_widget({ amount: '10' }); // preset the amount
    $('#total-price').currency_widget({ source_currency: 'EUR', target_currency: 'USD' }); // preset the source and target currencies
    $('#total-price').currency_widget({ editable_source_currency: false, editable_target_currency: false }); // don't let the visitor change currencies
    $('#total-price').currency_widget({
         source_currencies: { 'USD': 'US Dollar ($)', 'EUR': 'Euro (€)', 'SEK': 'Svenska kronor (kr)' }
        ,target_currencies: { 'USD': 'US Dollar ($)', 'EUR': 'Euro (€)', 'SEK': 'Svenska kronor (kr)' }
    ); // set the available currencies
    $('#total-price').currency_widget({ header: true, header_text: 'Currency converter' }); // set the header
    $('#total-price').currency_widget({ url: 'currency_widget/ajax.php' }); // set the url to the serversite converter
    $('#total-price').currency_widget({
         show_labels: true
        ,labels: {
             amount: 'Amount:'
            ,from: 'From:'
            ,to: 'To:'
            ,convert: 'Convert!'
            ,price: 'Price:'
        }
    }); // Whether to show labels and the labels themselves

    // you can also set these options globally, e.g.
    $.currency_widget.defaults.amount = '10';
    $('#total-price').currency_widget(); // amount will be set to 10
});
