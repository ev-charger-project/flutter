class CheckValidate {
  static String name = r'^[a-zA-Z\s]+$';
  static String email = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  static String phoneNumber = r'^.{8,}$';
  static String password = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';
}