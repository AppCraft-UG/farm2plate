class AccountItem {
  final String label;
  final String iconPath;

  AccountItem(this.label, this.iconPath);
}

List<AccountItem> accountItems = [
  AccountItem("Orders", "assets/icons/account_icons/orders_icon.svg"),
  AccountItem("My Details", "assets/icons/account_icons/details_icon.svg"),
  AccountItem(
      "Track Order", "assets/icons/account_icons/delivery_icon.svg"),
  AccountItem("Payment Methods", "assets/icons/account_icons/payment_icon.svg"),
  AccountItem("Promo Codes", "assets/icons/account_icons/promo_icon.svg"),
  AccountItem(
      "Notifications", "assets/icons/account_icons/notification_icon.svg"),
  AccountItem("Help", "assets/icons/account_icons/help_icon.svg"),
  AccountItem("About", "assets/icons/account_icons/about_icon.svg"),
];
