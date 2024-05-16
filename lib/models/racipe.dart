class Recipe {
  bool? vegetarian;
  bool? vegan;
  bool? glutenFree;
  bool? dairyFree;
  bool? veryHealthy;
  bool? cheap;
  bool? veryPopular;
  bool? sustainable;
  bool? lowFodmap;
  int? weightWatcherSmartPoints;
  String? gaps;
  int? preparationMinutes;
  int? cookingMinutes;
  int? aggregateLikes;
  int? healthScore;
  String? creditsText;
  String? sourceName;
  double? pricePerServing;
  List<ExtendedIngredient>? extendedIngredients;
  int? id;
  String? title;
  int? readyInMinutes;
  int? servings;
  String? sourceUrl;
  String? image;
  String? imageType;
  // Taste? taste;
  String? summary;
  List<dynamic>? cuisines;
  List<String>? dishTypes;
  List<String>? diets;
  List<dynamic>? occasions;
  // WinePairing? winePairing;
  String? instructions;
  List<AnalyzedInstruction>? analyzedInstructions;
  dynamic ? originalId;
  double? spoonacularScore;

  Recipe(
      {this.vegetarian,
        this.vegan,
        this.glutenFree,
        this.dairyFree,
        this.veryHealthy,
        this.cheap,
        this.veryPopular,
        this.sustainable,
        this.lowFodmap,
        this.weightWatcherSmartPoints,
        this.gaps,
        this.preparationMinutes,
        this.cookingMinutes,
        this.aggregateLikes,
        this.healthScore,
        this.creditsText,
        this.sourceName,
        this.pricePerServing,
        this.extendedIngredients,
        this.id,
        this.title,
        this.readyInMinutes,
        this.servings,
        this.sourceUrl,
        this.image,
        this.imageType,
        // this.taste,
        this.summary,
        this.cuisines,
        this.dishTypes,
        this.diets,
        this.occasions,
        // this.winePairing,
        this.instructions,
        this.analyzedInstructions,
        this.originalId,
        this.spoonacularScore});

  Recipe.fromJson(Map<String, dynamic> json) {
    vegetarian = json['vegetarian'];
    vegan = json['vegan'];
    glutenFree = json['glutenFree'];
    dairyFree = json['dairyFree'];
    veryHealthy = json['veryHealthy'];
    cheap = json['cheap'];
    veryPopular = json['veryPopular'];
    sustainable = json['sustainable'];
    lowFodmap = json['lowFodmap'];
    weightWatcherSmartPoints = json['weightWatcherSmartPoints'];
    gaps = json['gaps'];
    preparationMinutes = json['preparationMinutes'];
    cookingMinutes = json['cookingMinutes'];
    aggregateLikes = json['aggregateLikes'];
    healthScore = json['healthScore'];
    creditsText = json['creditsText'];
    sourceName = json['sourceName'];
    pricePerServing = json['pricePerServing'];
    if (json['extendedIngredients'] != null) {
      extendedIngredients = <ExtendedIngredient>[];
      json['extendedIngredients'].forEach((v) {
        extendedIngredients!.add(ExtendedIngredient.fromJson(v));
      });
    }
    id = json['id'];
    title = json['title'];
    readyInMinutes = json['readyInMinutes'];
    servings = json['servings'];
    sourceUrl = json['sourceUrl'];
    image = json['image'];
    imageType = json['imageType'];
    // taste = json['taste'] != null ? new Taste.fromJson(json['taste']) : null;
    summary = json['summary'];
    cuisines: json['cuisines'] as List<dynamic>?;
    dishTypes = json['dishTypes'].cast<String>();
    diets = json['diets'].cast<String>();
    occasions: json['occasions'] as List<dynamic>?;
    // winePairing = json['winePairing'] != null
    //     ? new WinePairing.fromJson(json['winePairing'])
    //     : null;
    instructions = json['instructions'];
    if (json['analyzedInstructions'] != null) {
      analyzedInstructions = <AnalyzedInstruction>[];
      json['analyzedInstructions'].forEach((v) {
        analyzedInstructions!.add(AnalyzedInstruction.fromJson(v));
      });
    }
    originalId = json['originalId'];
    spoonacularScore = json['spoonacularScore'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['vegetarian'] = vegetarian;
    data['vegan'] = vegan;
    data['glutenFree'] = glutenFree;
    data['dairyFree'] = dairyFree;
    data['veryHealthy'] = veryHealthy;
    data['cheap'] = cheap;
    data['veryPopular'] = veryPopular;
    data['sustainable'] = sustainable;
    data['lowFodmap'] = lowFodmap;
    data['weightWatcherSmartPoints'] = weightWatcherSmartPoints;
    data['gaps'] = gaps;
    data['preparationMinutes'] = preparationMinutes;
    data['cookingMinutes'] = cookingMinutes;
    data['aggregateLikes'] = aggregateLikes;
    data['healthScore'] = healthScore;
    data['creditsText'] = creditsText;
    data['sourceName'] = sourceName;
    data['pricePerServing'] = pricePerServing;
    if (extendedIngredients != null) {
      data['extendedIngredients'] =
          extendedIngredients!.map((v) => v.toJson()).toList();
    }
    data['id'] = id;
    data['title'] = title;
    data['readyInMinutes'] = readyInMinutes;
    data['servings'] = servings;
    data['sourceUrl'] = sourceUrl;
    data['image'] = image;
    data['imageType'] = imageType;

    data['summary'] = summary;
    if (cuisines != null) {
      data['cuisines'] = cuisines!.map((v) => v.toJson()).toList();
    }
    data['dishTypes'] = dishTypes;
    data['diets'] = diets;
    if (occasions != null) {
      data['occasions'] = occasions!.map((v) => v.toJson()).toList();
    }

    data['instructions'] = instructions;
    if (analyzedInstructions != null) {
      data['analyzedInstructions'] =
          analyzedInstructions!.map((v) => v.toJson()).toList();
    }
    data['originalId'] = originalId;
    data['spoonacularScore'] = spoonacularScore;
    return data;
  }
}
