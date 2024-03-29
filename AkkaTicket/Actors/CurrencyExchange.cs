﻿using Akka.Actor;
using Akka.Event;
using AkkaTicket.Shared.Messages.Other;

namespace AkkaTicket.Actors
{
    public class CurrencyExchange : UntypedActor
    {
        private static bool ShouldDelay = true;
        public CurrencyExchange() { }
        protected ILoggingAdapter Log { get; } = Context.GetLogger();
        protected override void PreStart()
        {
            Log.Info($"Currency exchange actor started");
        }

        protected override void PostStop()
        {
            Log.Info($"Currency exchange actor stopped");
        }

        private double CurrencyRate(string currency)
        {
            switch (currency)
            {
                case "":
                    return 1;
                case "EUR":
                    return 0.23;
                case "USD":
                    return 0.25;
                default:
                    throw new ArgumentException();
            }
        }

        protected override async void OnReceive(object message)
        {
            switch (message)
            {
                case ExchangeCurrency exchangeCurrency:
                    var sender = Sender;
                    if (ShouldDelay)
                    {
                        Log.Info("Delaying exchange");
                        await Task.Delay(5000);
                    }
                    Log.Info($"Resolving currency for {exchangeCurrency.Amount}: {exchangeCurrency.Currency}");
                    sender.Tell(exchangeCurrency.Amount * CurrencyRate(exchangeCurrency.Currency));
                    break;
            }
        }

        public static Props Props() => Akka.Actor.Props.Create(() => new  CurrencyExchange());
    }
}
