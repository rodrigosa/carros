class ApiResponse<T> {
  bool ok;
  String msg;
  T result;

  ApiResponse.ok(this.result) {
    // Named constructor
    ok = true;
  }

  ApiResponse.error(this.msg) {
    // Named constructor
    ok = false;
  }
}
