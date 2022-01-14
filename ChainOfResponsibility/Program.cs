using System;
using System.Collections.Generic;

namespace ChainOfResponsibility
{
    class Program
    {
        static void Main(string[] args)
        {
            var person = new Person()
            {
                Name = "Raju",
                Age = 30,
                Address = "Dhaka, Bangladesh."
            };

            //Request request = new Request() { Data = person };


            //MaxAgeHandler maxAgeHandler = new MaxAgeHandler();
            //NameLenghtHandler nameHandler = new NameLenghtHandler();
            //AddressLenghtHandler addressHandler = new AddressLenghtHandler();

            //maxAgeHandler.SetNextHandler(nameHandler);
            //nameHandler.SetNextHandler(addressHandler);

            //maxAgeHandler.Process(request);


            //foreach (var item in request.ValidationMessage)
            //{
            //    Console.WriteLine(item);
            //}

            Paymentmethod paymentmethod = new Paymentmethod
            {
                paymentType = PaymentType.DebitCard
            };

            CreditCardHandler creditCardHandler = new CreditCardHandler();
            DebitCardHandler debitCardHandler = new DebitCardHandler();
            PaymentWalletHandler paymentWalletHandler = new PaymentWalletHandler();
            NetBankingHandler netBankingHandler = new NetBankingHandler();

            creditCardHandler.SetNextHandler(debitCardHandler);
            debitCardHandler.SetNextHandler(paymentWalletHandler);
            paymentWalletHandler.SetNextHandler(netBankingHandler);

            creditCardHandler.Process(new Request { Data = paymentmethod });

            Console.ReadKey();
        }
    }

}
