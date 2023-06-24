class BookModel {
  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;
  SearchInfo? _searchInfo;

  BookModel(
      {
        String? kind,
        String? id,
        String? etag,
        String? selfLink,
        VolumeInfo? volumeInfo,
        SaleInfo? saleInfo,
        AccessInfo? accessInfo,
        SearchInfo? searchInfo}) {
    if (kind != null) {
      _kind = kind;
    }
    if (id != null) {
      _id = id;
    }
    if (etag != null) {
      _etag = etag;
    }
    if (selfLink != null) {
      _selfLink = selfLink;
    }
    if (volumeInfo != null) {
      _volumeInfo = volumeInfo;
    }
    if (saleInfo != null) {
      _saleInfo = saleInfo;
    }
    if (accessInfo != null) {
      _accessInfo = accessInfo;
    }
    if (searchInfo != null) {
      _searchInfo = searchInfo;
    }
  }

  String? get kind => _kind;
  set kind(String? kind) => _kind = kind;
  String? get id => _id;
  set id(String? id) => _id = id;
  String? get etag => _etag;
  set etag(String? etag) => _etag = etag;
  String? get selfLink => _selfLink;
  set selfLink(String? selfLink) => _selfLink = selfLink;
  VolumeInfo? get volumeInfo => _volumeInfo;
  set volumeInfo(VolumeInfo? volumeInfo) => _volumeInfo = volumeInfo;
  SaleInfo? get saleInfo => _saleInfo;
  set saleInfo(SaleInfo? saleInfo) => _saleInfo = saleInfo;
  AccessInfo? get accessInfo => _accessInfo;
  set accessInfo(AccessInfo? accessInfo) => _accessInfo = accessInfo;
  SearchInfo? get searchInfo => _searchInfo;
  set searchInfo(SearchInfo? searchInfo) => _searchInfo = searchInfo;

  BookModel.fromJson(Map<String, dynamic> json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    _saleInfo = json['saleInfo'] != null
        ? SaleInfo.fromJson(json['saleInfo'])
        : null;
    _accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
    _searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kind'] = _kind;
    data['id'] = _id;
    data['etag'] = _etag;
    data['selfLink'] = _selfLink;
    if (_volumeInfo != null) {
      data['volumeInfo'] = _volumeInfo!.toJson();
    }
    if (_saleInfo != null) {
      data['saleInfo'] = _saleInfo!.toJson();
    }
    if (_accessInfo != null) {
      data['accessInfo'] = _accessInfo!.toJson();
    }
    if (_searchInfo != null) {
      data['searchInfo'] = _searchInfo!.toJson();
    }
    return data;
  }
}

class VolumeInfo {
  String? _title;
  String? _subtitle;
  List<String>? _authors;
  String? _publisher;
  String? _publishedDate;
  String? _description;
  List<IndustryIdentifiers>? _industryIdentifiers;
  ReadingModes? _readingModes;
  int? _pageCount;
  String? _printType;
  List<String>? _categories;
  String? _maturityRating;
  bool? _allowAnonLogging;
  String? _contentVersion;
  PanelizationSummary? _panelizationSummary;
  ImageLinks? _imageLinks;
  String? _language;
  String? _previewLink;
  String? _infoLink;
  String? _canonicalVolumeLink;

  VolumeInfo(
      {String? title,
        String? subtitle,
        List<String>? authors,
        String? publisher,
        String? publishedDate,
        String? description,
        List<IndustryIdentifiers>? industryIdentifiers,
        ReadingModes? readingModes,
        int? pageCount,
        String? printType,
        List<String>? categories,
        String? maturityRating,
        bool? allowAnonLogging,
        String? contentVersion,
        PanelizationSummary? panelizationSummary,
        ImageLinks? imageLinks,
        String? language,
        String? previewLink,
        String? infoLink,
        String? canonicalVolumeLink}) {
    if (title != null) {
      _title = title;
    }
    if (subtitle != null) {
      _subtitle = subtitle;
    }
    if (authors != null) {
      _authors = authors;
    }
    if (publisher != null) {
      _publisher = publisher;
    }
    if (publishedDate != null) {
      _publishedDate = publishedDate;
    }
    if (description != null) {
      _description = description;
    }
    if (industryIdentifiers != null) {
      _industryIdentifiers = industryIdentifiers;
    }
    if (readingModes != null) {
      _readingModes = readingModes;
    }
    if (pageCount != null) {
      _pageCount = pageCount;
    }
    if (printType != null) {
      _printType = printType;
    }
    if (categories != null) {
      _categories = categories;
    }
    if (maturityRating != null) {
      _maturityRating = maturityRating;
    }
    if (allowAnonLogging != null) {
      _allowAnonLogging = allowAnonLogging;
    }
    if (contentVersion != null) {
      _contentVersion = contentVersion;
    }
    if (panelizationSummary != null) {
      _panelizationSummary = panelizationSummary;
    }
    if (imageLinks != null) {
      _imageLinks = imageLinks;
    }
    if (language != null) {
      _language = language;
    }
    if (previewLink != null) {
      _previewLink = previewLink;
    }
    if (infoLink != null) {
      _infoLink = infoLink;
    }
    if (canonicalVolumeLink != null) {
      _canonicalVolumeLink = canonicalVolumeLink;
    }
  }

  String? get title => _title;
  set title(String? title) => _title = title;
  String? get subtitle => _subtitle;
  set subtitle(String? subtitle) => _subtitle = subtitle;
  List<String>? get authors => _authors;
  set authors(List<String>? authors) => _authors = authors;
  String? get publisher => _publisher;
  set publisher(String? publisher) => _publisher = publisher;
  String? get publishedDate => _publishedDate;
  set publishedDate(String? publishedDate) => _publishedDate = publishedDate;
  String? get description => _description;
  set description(String? description) => _description = description;
  List<IndustryIdentifiers>? get industryIdentifiers => _industryIdentifiers;
  set industryIdentifiers(List<IndustryIdentifiers>? industryIdentifiers) =>
      _industryIdentifiers = industryIdentifiers;
  ReadingModes? get readingModes => _readingModes;
  set readingModes(ReadingModes? readingModes) => _readingModes = readingModes;
  int? get pageCount => _pageCount;
  set pageCount(int? pageCount) => _pageCount = pageCount;
  String? get printType => _printType;
  set printType(String? printType) => _printType = printType;
  List<String>? get categories => _categories;
  set categories(List<String>? categories) => _categories = categories;
  String? get maturityRating => _maturityRating;
  set maturityRating(String? maturityRating) =>
      _maturityRating = maturityRating;
  bool? get allowAnonLogging => _allowAnonLogging;
  set allowAnonLogging(bool? allowAnonLogging) =>
      _allowAnonLogging = allowAnonLogging;
  String? get contentVersion => _contentVersion;
  set contentVersion(String? contentVersion) =>
      _contentVersion = contentVersion;
  PanelizationSummary? get panelizationSummary => _panelizationSummary;
  set panelizationSummary(PanelizationSummary? panelizationSummary) =>
      _panelizationSummary = panelizationSummary;
  ImageLinks? get imageLinks => _imageLinks;
  set imageLinks(ImageLinks? imageLinks) => _imageLinks = imageLinks;
  String? get language => _language;
  set language(String? language) => _language = language;
  String? get previewLink => _previewLink;
  set previewLink(String? previewLink) => _previewLink = previewLink;
  String? get infoLink => _infoLink;
  set infoLink(String? infoLink) => _infoLink = infoLink;
  String? get canonicalVolumeLink => _canonicalVolumeLink;
  set canonicalVolumeLink(String? canonicalVolumeLink) =>
      _canonicalVolumeLink = canonicalVolumeLink;

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _subtitle = json['subtitle'];
    _authors = json['authors'].cast<String>();
    _publisher = json['publisher'];
    _publishedDate = json['publishedDate'];
    _description = json['description'];
    if (json['industryIdentifiers'] != null) {
      _industryIdentifiers = <IndustryIdentifiers>[];
      json['industryIdentifiers'].forEach((v) {
        _industryIdentifiers!.add(IndustryIdentifiers.fromJson(v));
      });
    }
    _readingModes = json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'])
        : null;
    _pageCount = json['pageCount'];
    _printType = json['printType'];
    _categories = json['categories'].cast<String>();
    _maturityRating = json['maturityRating'];
    _allowAnonLogging = json['allowAnonLogging'];
    _contentVersion = json['contentVersion'];
    _panelizationSummary = json['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(json['panelizationSummary'])
        : null;
    _imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    _language = json['language'];
    _previewLink = json['previewLink'];
    _infoLink = json['infoLink'];
    _canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = _title;
    data['subtitle'] = _subtitle;
    data['authors'] = _authors;
    data['publisher'] = _publisher;
    data['publishedDate'] = _publishedDate;
    data['description'] = _description;
    if (_industryIdentifiers != null) {
      data['industryIdentifiers'] =
          _industryIdentifiers!.map((v) => v.toJson()).toList();
    }
    if (_readingModes != null) {
      data['readingModes'] = _readingModes!.toJson();
    }
    data['pageCount'] = _pageCount;
    data['printType'] = _printType;
    data['categories'] = _categories;
    data['maturityRating'] = _maturityRating;
    data['allowAnonLogging'] = _allowAnonLogging;
    data['contentVersion'] = _contentVersion;
    if (_panelizationSummary != null) {
      data['panelizationSummary'] = _panelizationSummary!.toJson();
    }
    if (_imageLinks != null) {
      data['imageLinks'] = _imageLinks!.toJson();
    }
    data['language'] = _language;
    data['previewLink'] = _previewLink;
    data['infoLink'] = _infoLink;
    data['canonicalVolumeLink'] = _canonicalVolumeLink;
    return data;
  }
}

class IndustryIdentifiers {
  String? _type;
  String? _identifier;

  IndustryIdentifiers({String? type, String? identifier}) {
    if (type != null) {
      _type = type;
    }
    if (identifier != null) {
      _identifier = identifier;
    }
  }

  String? get type => _type;
  set type(String? type) => _type = type;
  String? get identifier => _identifier;
  set identifier(String? identifier) => _identifier = identifier;

  IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _identifier = json['identifier'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = _type;
    data['identifier'] = _identifier;
    return data;
  }
}

class ReadingModes {
  bool? _text;
  bool? _image;

  ReadingModes({bool? text, bool? image}) {
    if (text != null) {
      _text = text;
    }
    if (image != null) {
      _image = image;
    }
  }

  bool? get text => _text;
  set text(bool? text) => _text = text;
  bool? get image => _image;
  set image(bool? image) => _image = image;

  ReadingModes.fromJson(Map<String, dynamic> json) {
    _text = json['text'];
    _image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = _text;
    data['image'] = _image;
    return data;
  }
}

class PanelizationSummary {
  bool? _containsEpubBubbles;
  bool? _containsImageBubbles;

  PanelizationSummary({bool? containsEpubBubbles, bool? containsImageBubbles}) {
    if (containsEpubBubbles != null) {
      _containsEpubBubbles = containsEpubBubbles;
    }
    if (containsImageBubbles != null) {
      _containsImageBubbles = containsImageBubbles;
    }
  }

  bool? get containsEpubBubbles => _containsEpubBubbles;
  set containsEpubBubbles(bool? containsEpubBubbles) =>
      _containsEpubBubbles = containsEpubBubbles;
  bool? get containsImageBubbles => _containsImageBubbles;
  set containsImageBubbles(bool? containsImageBubbles) =>
      _containsImageBubbles = containsImageBubbles;

  PanelizationSummary.fromJson(Map<String, dynamic> json) {
    _containsEpubBubbles = json['containsEpubBubbles'];
    _containsImageBubbles = json['containsImageBubbles'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['containsEpubBubbles'] = _containsEpubBubbles;
    data['containsImageBubbles'] = _containsImageBubbles;
    return data;
  }
}

class ImageLinks {
  String? _smallThumbnail;
  String? _thumbnail;

  ImageLinks({String? smallThumbnail, String? thumbnail}) {
    if (smallThumbnail != null) {
      _smallThumbnail = smallThumbnail;
    }
    if (thumbnail != null) {
      _thumbnail = thumbnail;
    }
  }

  String? get smallThumbnail => _smallThumbnail;
  set smallThumbnail(String? smallThumbnail) =>
      _smallThumbnail = smallThumbnail;
  String? get thumbnail => _thumbnail;
  set thumbnail(String? thumbnail) => _thumbnail = thumbnail;

  ImageLinks.fromJson(Map<String, dynamic> json) {
    _smallThumbnail = json['smallThumbnail'];
    _thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['smallThumbnail'] = _smallThumbnail;
    data['thumbnail'] = _thumbnail;
    return data;
  }
}

class SaleInfo {
  String? _country;
  String? _saleability;
  bool? _isEbook;
  ListPrice? _listPrice;
  ListPrice? _retailPrice;
  String? _buyLink;
  List<Offers>? _offers;

  SaleInfo(
      {String? country,
        String? saleability,
        bool? isEbook,
        ListPrice? listPrice,
        ListPrice? retailPrice,
        String? buyLink,
        List<Offers>? offers}) {
    if (country != null) {
      _country = country;
    }
    if (saleability != null) {
      _saleability = saleability;
    }
    if (isEbook != null) {
      _isEbook = isEbook;
    }
    if (listPrice != null) {
      _listPrice = listPrice;
    }
    if (retailPrice != null) {
      _retailPrice = retailPrice;
    }
    if (buyLink != null) {
      _buyLink = buyLink;
    }
    if (offers != null) {
      _offers = offers;
    }
  }

  String? get country => _country;
  set country(String? country) => _country = country;
  String? get saleability => _saleability;
  set saleability(String? saleability) => _saleability = saleability;
  bool? get isEbook => _isEbook;
  set isEbook(bool? isEbook) => _isEbook = isEbook;
  ListPrice? get listPrice => _listPrice;
  set listPrice(ListPrice? listPrice) => _listPrice = listPrice;
  ListPrice? get retailPrice => _retailPrice;
  set retailPrice(ListPrice? retailPrice) => _retailPrice = retailPrice;
  String? get buyLink => _buyLink;
  set buyLink(String? buyLink) => _buyLink = buyLink;
  List<Offers>? get offers => _offers;
  set offers(List<Offers>? offers) => _offers = offers;

  SaleInfo.fromJson(Map<String, dynamic> json) {
    _country = json['country'];
    _saleability = json['saleability'];
    _isEbook = json['isEbook'];
    _listPrice = json['listPrice'] != null
        ? ListPrice.fromJson(json['listPrice'])
        : null;
    _retailPrice = json['retailPrice'] != null
        ? ListPrice.fromJson(json['retailPrice'])
        : null;
    _buyLink = json['buyLink'];
    if (json['offers'] != null) {
      _offers = <Offers>[];
      json['offers'].forEach((v) {
        _offers!.add(Offers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country'] = _country;
    data['saleability'] = _saleability;
    data['isEbook'] = _isEbook;
    if (_listPrice != null) {
      data['listPrice'] = _listPrice!.toJson();
    }
    if (_retailPrice != null) {
      data['retailPrice'] = _retailPrice!.toJson();
    }
    data['buyLink'] = _buyLink;
    if (_offers != null) {
      data['offers'] = _offers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ListPrice {
  double? _amount;
  String? _currencyCode;

  ListPrice({double? amount, String? currencyCode}) {
    if (amount != null) {
      _amount = amount;
    }
    if (currencyCode != null) {
      _currencyCode = currencyCode;
    }
  }

  double? get amount => _amount;
  set amount(double? amount) => _amount = amount;
  String? get currencyCode => _currencyCode;
  set currencyCode(String? currencyCode) => _currencyCode = currencyCode;

  ListPrice.fromJson(Map<String, dynamic> json) {
    _amount = json['amount'];
    _currencyCode = json['currencyCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['amount'] = _amount;
    data['currencyCode'] = _currencyCode;
    return data;
  }
}

class Offers {
  int? _finskyOfferType;
  ListPrice? _listPrice;
  ListPrice? _retailPrice;
  bool? _giftable;

  Offers(
      {int? finskyOfferType,
        ListPrice? listPrice,
        ListPrice? retailPrice,
        bool? giftable}) {
    if (finskyOfferType != null) {
      _finskyOfferType = finskyOfferType;
    }
    if (listPrice != null) {
      _listPrice = listPrice;
    }
    if (retailPrice != null) {
      _retailPrice = retailPrice;
    }
    if (giftable != null) {
      _giftable = giftable;
    }
  }

  int? get finskyOfferType => _finskyOfferType;
  set finskyOfferType(int? finskyOfferType) =>
      _finskyOfferType = finskyOfferType;
  ListPrice? get listPrice => _listPrice;
  set listPrice(ListPrice? listPrice) => _listPrice = listPrice;
  ListPrice? get retailPrice => _retailPrice;
  set retailPrice(ListPrice? retailPrice) => _retailPrice = retailPrice;
  bool? get giftable => _giftable;
  set giftable(bool? giftable) => _giftable = giftable;

  Offers.fromJson(Map<String, dynamic> json) {
    _finskyOfferType = json['finskyOfferType'];
    _listPrice = json['listPrice'] != null
        ? ListPrice.fromJson(json['listPrice'])
        : null;
    _retailPrice = json['retailPrice'] != null
        ? ListPrice.fromJson(json['retailPrice'])
        : null;
    _giftable = json['giftable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['finskyOfferType'] = _finskyOfferType;
    if (_listPrice != null) {
      data['listPrice'] = _listPrice!.toJson();
    }
    if (_retailPrice != null) {
      data['retailPrice'] = _retailPrice!.toJson();
    }
    data['giftable'] = _giftable;
    return data;
  }
}

class ListOfPrice {
  int? _amountInMicros;
  String? _currencyCode;

  ListPrice({int? amountInMicros, String? currencyCode}) {
    if (amountInMicros != null) {
      _amountInMicros = amountInMicros;
    }
    if (currencyCode != null) {
      _currencyCode = currencyCode;
    }
  }

  int? get amountInMicros => _amountInMicros;
  set amountInMicros(int? amountInMicros) => _amountInMicros = amountInMicros;
  String? get currencyCode => _currencyCode;
  set currencyCode(String? currencyCode) => _currencyCode = currencyCode;

  ListOfPrice.fromJson(Map<String, dynamic> json) {
    _amountInMicros = json['amountInMicros'];
    _currencyCode = json['currencyCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['amountInMicros'] = _amountInMicros;
    data['currencyCode'] = _currencyCode;
    return data;
  }
}

class AccessInfo {
  String? _country;
  String? _viewability;
  bool? _embeddable;
  bool? _publicDomain;
  String? _textToSpeechPermission;
  Epub? _epub;
  Epub? _pdf;
  String? _webReaderLink;
  String? _accessViewStatus;
  bool? _quoteSharingAllowed;

  AccessInfo(
      {String? country,
        String? viewability,
        bool? embeddable,
        bool? publicDomain,
        String? textToSpeechPermission,
        Epub? epub,
        Epub? pdf,
        String? webReaderLink,
        String? accessViewStatus,
        bool? quoteSharingAllowed}) {
    if (country != null) {
      _country = country;
    }
    if (viewability != null) {
      _viewability = viewability;
    }
    if (embeddable != null) {
      _embeddable = embeddable;
    }
    if (publicDomain != null) {
      _publicDomain = publicDomain;
    }
    if (textToSpeechPermission != null) {
      _textToSpeechPermission = textToSpeechPermission;
    }
    if (epub != null) {
      _epub = epub;
    }
    if (pdf != null) {
      _pdf = pdf;
    }
    if (webReaderLink != null) {
      _webReaderLink = webReaderLink;
    }
    if (accessViewStatus != null) {
      _accessViewStatus = accessViewStatus;
    }
    if (quoteSharingAllowed != null) {
      _quoteSharingAllowed = quoteSharingAllowed;
    }
  }

  String? get country => _country;
  set country(String? country) => _country = country;
  String? get viewability => _viewability;
  set viewability(String? viewability) => _viewability = viewability;
  bool? get embeddable => _embeddable;
  set embeddable(bool? embeddable) => _embeddable = embeddable;
  bool? get publicDomain => _publicDomain;
  set publicDomain(bool? publicDomain) => _publicDomain = publicDomain;
  String? get textToSpeechPermission => _textToSpeechPermission;
  set textToSpeechPermission(String? textToSpeechPermission) =>
      _textToSpeechPermission = textToSpeechPermission;
  Epub? get epub => _epub;
  set epub(Epub? epub) => _epub = epub;
  Epub? get pdf => _pdf;
  set pdf(Epub? pdf) => _pdf = pdf;
  String? get webReaderLink => _webReaderLink;
  set webReaderLink(String? webReaderLink) => _webReaderLink = webReaderLink;
  String? get accessViewStatus => _accessViewStatus;
  set accessViewStatus(String? accessViewStatus) =>
      _accessViewStatus = accessViewStatus;
  bool? get quoteSharingAllowed => _quoteSharingAllowed;
  set quoteSharingAllowed(bool? quoteSharingAllowed) =>
      _quoteSharingAllowed = quoteSharingAllowed;

  AccessInfo.fromJson(Map<String, dynamic> json) {
    _country = json['country'];
    _viewability = json['viewability'];
    _embeddable = json['embeddable'];
    _publicDomain = json['publicDomain'];
    _textToSpeechPermission = json['textToSpeechPermission'];
    _epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    _pdf = json['pdf'] != null ? Epub.fromJson(json['pdf']) : null;
    _webReaderLink = json['webReaderLink'];
    _accessViewStatus = json['accessViewStatus'];
    _quoteSharingAllowed = json['quoteSharingAllowed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country'] = _country;
    data['viewability'] = _viewability;
    data['embeddable'] = _embeddable;
    data['publicDomain'] = _publicDomain;
    data['textToSpeechPermission'] = _textToSpeechPermission;
    if (_epub != null) {
      data['epub'] = _epub!.toJson();
    }
    if (_pdf != null) {
      data['pdf'] = _pdf!.toJson();
    }
    data['webReaderLink'] = _webReaderLink;
    data['accessViewStatus'] = _accessViewStatus;
    data['quoteSharingAllowed'] = _quoteSharingAllowed;
    return data;
  }
}

class Epub {
  bool? _isAvailable;
  String? _acsTokenLink;

  Epub({bool? isAvailable, String? acsTokenLink}) {
    if (isAvailable != null) {
      _isAvailable = isAvailable;
    }
    if (acsTokenLink != null) {
      _acsTokenLink = acsTokenLink;
    }
  }

  bool? get isAvailable => _isAvailable;
  set isAvailable(bool? isAvailable) => _isAvailable = isAvailable;
  String? get acsTokenLink => _acsTokenLink;
  set acsTokenLink(String? acsTokenLink) => _acsTokenLink = acsTokenLink;

  Epub.fromJson(Map<String, dynamic> json) {
    _isAvailable = json['isAvailable'];
    _acsTokenLink = json['acsTokenLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isAvailable'] = _isAvailable;
    data['acsTokenLink'] = _acsTokenLink;
    return data;
  }
}

class SearchInfo {
  String? _textSnippet;

  SearchInfo({String? textSnippet}) {
    if (textSnippet != null) {
      _textSnippet = textSnippet;
    }
  }

  String? get textSnippet => _textSnippet;
  set textSnippet(String? textSnippet) => _textSnippet = textSnippet;

  SearchInfo.fromJson(Map<String, dynamic> json) {
    _textSnippet = json['textSnippet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['textSnippet'] = _textSnippet;
    return data;
  }
}