import 'package:get/get.dart';

class MyController extends GetxController
{
  RxDouble ans = 0.0.obs;
  RxString answer="".obs;
  get_sign(String s1,String s2,String sign)
  {

    if (sign == '+') {
      double ans = double.parse(s1) + double.parse(s2);
      answer = ans.toString().obs;
    }
    if (sign == '-') {
      double ans = double.parse(s1) - double.parse(s2);
      answer= ans.toString().obs;
    }
    if (sign == '*') {
      double ans = double.parse(s1) * double.parse(s2);
      answer= ans.toString().obs;
    }
    if (sign == '/') {
      double ans = double.parse(s1) / double.parse(s2);
      answer= ans.toString().obs;
    }

}
}