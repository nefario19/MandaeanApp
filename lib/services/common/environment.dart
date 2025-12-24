class Environment {
  /// Project ID's
  static const String appwriteProjectId = '68ceaf1c0003f5c4f746';
  static const String appwriteProjectName = 'Mandi';
  static const String appwritePublicEndpoint = 'https://fra.cloud.appwrite.io/v1';

  /// Real-time channels
  // Account
  static const String accountChannel = 'account';

  // Database
  static const String databaseId = '68d2cc0a00207193ffeb';
  static const String votesTableId = 'votes';
  static const String votesRowChannel = 'databases.$databaseId.tables.$votesTableId.rows';
}
