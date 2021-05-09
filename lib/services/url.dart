import 'package:cyclo/services/toast.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlServices {
  static void openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      ToastSender.sendToast("There was some issue. Try again later");
    }
  }
}
