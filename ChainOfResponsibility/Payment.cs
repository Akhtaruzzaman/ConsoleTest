using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChainOfResponsibility
{
    enum PaymentType
    {
        CreditCard = 1,
        DebitCard = 2,
        PaymentWallet = 3,
        NetBanking = 4
    }
    class Paymentmethod
    {
        public PaymentType paymentType;
    }
    class CreditCardHandler : BaseHandler
    {
        public override void Process(Request request)
        {
            if (request.Data is Paymentmethod paymentmethod)
            {
                if (paymentmethod.paymentType == PaymentType.CreditCard)
                {
                    Console.WriteLine("Credit card process.");
                }
                else if (_nextHandler != null)
                {
                    _nextHandler.Process(request);
                }
                else
                {
                    throw new Exception("No handler found!");
                }
            }
            else
            {
                throw new Exception("Invalid payment!");
            }
        }
    }
    class DebitCardHandler : BaseHandler
    {
        public override void Process(Request request)
        {
            if (request.Data is Paymentmethod paymentmethod)
            {
                if (paymentmethod.paymentType == PaymentType.DebitCard)
                {
                    Console.WriteLine("Debit card process.");
                }
                else if (_nextHandler != null)
                {
                    _nextHandler.Process(request);
                }
                else
                {
                    throw new Exception("No handler found!");
                }
            }
            else
            {
                throw new Exception("Invalid payment!");
            }
        }
    }
    class PaymentWalletHandler : BaseHandler
    {
        public override void Process(Request request)
        {
            if (request.Data is Paymentmethod paymentmethod)
            {
                if (paymentmethod.paymentType == PaymentType.PaymentWallet)
                {
                    Console.WriteLine("Payment Wallet process.");
                }
                else if (_nextHandler != null)
                {
                    _nextHandler.Process(request);
                }
                else
                {
                    throw new Exception("No handler found!");
                }
            }
            else
            {
                throw new Exception("Invalid payment!");
            }
        }
    }
    class NetBankingHandler : BaseHandler
    {
        public override void Process(Request request)
        {
            if (request.Data is Paymentmethod paymentmethod)
            {
                if (paymentmethod.paymentType == PaymentType.NetBanking)
                {
                    Console.WriteLine("Net Banking process.");
                }
                else if (_nextHandler != null)
                {
                    _nextHandler.Process(request);
                }
                else
                {
                    throw new Exception("No handler found!");
                }
            }
            else
            {
                throw new Exception("Invalid payment!");
            }
        }
    }
}
