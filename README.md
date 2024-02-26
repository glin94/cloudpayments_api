# cloudpayments_api

Dart REST client for [Yookassa Payments API](https://yookassa.ru/developers/payment-acceptance/getting-started/quick-start)

## Get started

### Add dependency

```yaml
dependencies:
  cloudpayments_api: ^1.0.0
```

### Simple to use

```dart
import 'package:dio/dio.dart';
import 'package:cloudpayments_api/cloudpayments_api.dart';


    final dio = Dio();

  final yookassaClient = YookassaClient(
    dio,
    shopId: 'your_shop_id',
    secretKey: 'your_secret_key',
  );

  const createdPaymentRequest = CreatePaymentRequest(
    amount: Amount(
      value: '100.00',
      currency: 'RUB',
    ),
    paymentMethodData: YookassaPaymentMethod.sbp(),
    confirmation: YookassaConfirmation.qr(),
    capture: true,
    description: 'Заказ #1',
  );

  try {
    final payment =
        await yookassaClient.createPayment(payment: createdPaymentRequest);

    payment.map(
      pending: (payment) {
        print(payment);
      },
      waitingForCapture: (payment) {
        print(payment);
      },
      succeeded: (payment) {
        print(payment);
      },
      canceled: (payment) {
        print(payment);
      },
    );
  } on YookassaError catch (e) {
    print(e);
  }
}
```
