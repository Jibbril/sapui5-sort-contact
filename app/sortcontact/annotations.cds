using MyService as service from '../../srv/service';
using from '../../srv/service';
using from '../../db/schema';



annotate service.MyEntity with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Second Entity Code',
            Value : SecondEntityCode,
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Label  : 'Second Entity Contact',
            Target : 'SecondEntity/@Communication.Contact' // TODO: The target path is not being picked up
        },
    ]
);

annotate service.MySecondEntity with @(
    Communication.Contact: {
        fn: Value
    }
);
