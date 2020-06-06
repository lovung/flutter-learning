main(List<String> args) {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  final Map<int, String> map2 = {
    1: 'I',
    5: 'V',
    10: 'X',
    50: 'L',
    100: 'C',
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  print(gifts);
  print(nobleGases);

  // var gifts = Map();
  gifts['first'] = 'vulong';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['haha'] = 'lala';
  print(gifts);

  Map<String, dynamic> json = {};
  Map<String, dynamic> notificationStatus = {
    'unread_notification_count': 0,
    '__typename': 'NotificationStatus',
  };
  Map<String, dynamic> data = {
    'notification_status': notificationStatus,
  };
  json["data"] = data;
  print(json);

  // var nobleGases = Map();
  // nobleGases[2] = 'helium';
  // nobleGases[10] = 'neon';
  // nobleGases[18] = 'argon';
}
