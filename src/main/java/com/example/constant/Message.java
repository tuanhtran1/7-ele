package com.example.constant;

public class Message {
    // AUTHORIZATION
    public static final String ERROR_AUTHORIZATION = "Vui lòng đăng nhập để thực hiện chức năng này";

    // REGISTER
    public static final String ERROR_REGISTER_EMPTY_NAME = "Vui lòng nhập họ tên";
    public static final String ERROR_REGISTER_EMPTY_EMAIL = "Vui lòng nhập email";
    public static final String ERROR_REGISTER_EMPTY_PASSWORD = "Vui lòng nhập mật khẩu";
    public static final String ERROR_REGISTER_EMPTY_REPEATED_PASSWORD = "Vui lòng xác nhận lại mật khẩu";
    public static final String ERROR_REGISTER_WRONG_EMAIL_FORMAT = "Email không đúng định dạng";
    public static final String ERROR_DUPLICATE_EMAIL = "Email này đã tồn tại";
    public static final String ERROR_REGISTER_NO_MATCH_PASSWORD = "Mật khẩu không trùng khớp!";
    public static final String MESSAGE_REGISTER_SUCCEED = "Đăng kí thành công vui lòng check mail!";
    public static final String MESSAGE_REGISTER_FAILED = "Đăng kí thất bại, vui lòng thử lại sau!";

    // LOGIN
    public static final String ERROR_LOGIN_EMPTY_EMAIL = "Vui lòng nhập email";
    public static final String ERROR_LOGIN_EMPTY_PASSWORD = "Vui lòng nhập mật khẩu";
    public static final String ERROR_LOGIN_WRONG_EMAIL_FORMAT = "Email không đúng định dạng";
    public static final String MESSAGE_LOGIN_FAILED = "Thông tin đăng nhập không chính xác";

    // PRODUCT_DETAIL
    public static final String ERROR_PRODUCT_NOT_ENOUGH = "Sản phẩm đã hết hàng, vui lòng quay lại sau!";
    public static final String ERROR_PRODUCT_NOT_ADAPT = "Số lượng sản phẩm hiện không đủ đáp ứng yêu cầu!";
    public static final String MESSAGE_PRODUCT_ADDED = "Sản phẩm đã được thêm vào vào giỏ hàng!";
    public static final String MESSAGE_PRODUCT_EXISTED = "Giỏ hàng của bạn đã có sản phẩm này";

    // CART
    public static final String MESSAGE_CART_DELETE_CONFIRM = "Bạn có muốn xóa sản phẩm này ra khỏi giỏ hàng không";
    public static final String MESSAGE_CART_DELETE_SUCCEED = "Sản phẩm đã được xóa khỏi giỏ hàng";
    public static final String ERROR_CART_DELETE_FAILED = "Xoá bị lỗi! Vui lòng kiểm tra lại";

    // CHECKOUT
    public static final String ERROR_CHECKOUT_EMPTY_ADDRESS = "Vui lòng nhập địa chỉ";

    // ACCOUNT
    public static final String ERROR_ACCOUNT_EMPTY_NAME = "Vui lòng nhập họ tên";
    public static final String ERROR_ACCOUNT_EMPTY_PHONE = "Vui lòng nhập số điện thoại";
    public static final String ERROR_ACCOUNT_EMPTY_CURRENT_PASS = "Vui lòng nhập mật khẩu hiện tại";
    public static final String ERROR_ACCOUNT_EMPTY_NEW_PASS= "Vui lòng nhập mật khẩu mới";
    public static final String ERROR_ACCOUNT_EMPTY_CONFIRM_PASS = "Vui lòng nhập mật khẩu xác nhận";

    // ADMIN PRODUCT
    public static final String MESSAGE_PRODUCT_CREATED_SUCCEED = "Thêm sản phẩm thành công";
    public static final String MESSAGE_PRODUCT_UPDATED_SUCCEED = "Cập nhật sản phẩm thành công";
    public static final String MESSAGE_PRODUCT_DELETED_SUCCEED = "Xóa sản phẩm thành công";
    public static final String ERROR_PRODUCT_CREATED_FAILED = "Thêm sản phẩm thất bại";
    public static final String ERROR_PRODUCT_UPDATED_FAILED = "Cập nhật sản phẩm thất bại";
    public static final String ERROR_PRODUCT_DELETED_FAILED = "Xóa sản phẩm thất bại";

    public static final String ERROR_PRODUCT_NAME_EMPTY = "Vui lòng nhập tên sản phẩm";
    public static final String ERROR_PRODUCT_CATEGORY_EMPTY = "Vui lòng chọn thể loại";
    public static final String ERROR_PRODUCT_AUTHOR_EMPTY = "Vui lòng nhập tên tác giả";
    public static final String ERROR_PRODUCT_PRICE_EMPTY = "Vui lòng nhập giá sản phẩm";
    public static final String ERROR_PRODUCT_DISCOUNT_EMPTY = "Vui lòng nhập mức giảm sản phẩm";
    public static final String ERROR_PRODUCT_DESCRIPTION_EMPTY = "Vui lòng nhập mô tả sản phẩm";
    public static final String ERROR_PRODUCT_IMAGE_EMPTY = "Vui lòng nhập hình ảnh sản phẩm";
}