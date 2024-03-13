import 'base_exception.dart';

class GetFirebaeAuthException extends BaseException {
  final String msg;
  GetFirebaeAuthException(this.msg) : super(msg);
}
