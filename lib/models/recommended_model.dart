class RecommendedModel {
  String name;
  String tagLine;
  String image;
  List<String> images;
  String description;
  int price;

  RecommendedModel(this.name, this.tagLine, this.image, this.images,
      this.description, this.price);
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(item['name'], item['tagLine'],
    item['image'], item['images'], item['description'], item['price']))
    .toList();

var recommendationsData = [
  {
    "name": "Cario, Egypt",
    "tagLine": "Top-Rated Tourist Attractions in Cairo ",
    "image":
    "https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-and-camels.jpg",
    "images": [
      "https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-and-camels.jpg",
      "https://www.planetware.com/photos-large/EGY/egypt-cairo-al-azhar-mosque.jpg",
      "https://www.planetware.com/wpimages/2018/11/egypt-cairo-attractions-manyal-palace.jpg",
      "https://www.planetware.com/photos-large/EGY/egypt-cairo-hanging-church-interior.jpg",
      "https://www.planetware.com/photos-large/EGY/egypt-cairo-al-azhar-park.jpg"
    ],
    "description":
    "Cairo is one of the world's great megacities. As beautiful as it is crazy, and as rich in historic finery,Cairo is where you really get a feel for Egyptian street life",
    "price": 930
  },
  {
    "name": "Cape Town, South Africa",
    "tagLine": "Top-Rated Tourist Attractions in Cape Town",
    "image":
    "https://www.planetware.com/photos-large/SAF/south-africa-cape-town-table-mountain.jpg",
    "images": [
      "https://www.planetware.com/photos-large/SAF/south-africa-cape-town-table-mountain.jpg",
      "https://www.planetware.com/photos-large/SAF/south-africa-cape-town-noon-gun.jpg",
      "https://www.planetware.com/photos-large/SAF/south-africa-cape-town-clifton.jpg",
      "https://www.planetware.com/photos-large/SAF/south-africa-cape-town-victoria-and-alfred-waterfront.jpg",
      "https://www.planetware.com/photos-large/SAF/south-africa-cape-town-chapmans-peak-drive.jpg",
      "https://www.planetware.com/photos-large/SAF/south-africa-cape-town-robben-island.jpg",
    ],
    "description":
    "Set seductively between mountains and the sea, Cape Town flaunts its natural beauty with pride. Rising above the city, iconic Table Mountain provides the perfect plateau for panoramic views that stretch to the glittering Atlantic, botanical gardens beckon from its slopes, and the city's long blonde beaches, backed by towering peaks, are some of South Africa's best",
    "price": 2300
  },
  {
    "name": "Mosi-oa-Tunya, Victoria Falls",
    "tagLine": "Top-Rated Tourist Attractions in Cape Town",
    "image":
    "https://www.nationsonline.org/gallery/africa/Victoria-Falls-with-rainbow.jpg",
    "images": [
      "https://www.nationsonline.org/gallery/africa/Victoria-Falls-with-rainbow.jpg",
      "https://images.squarespace-cdn.com/content/v1/52ee7408e4b0d94885a12285/1516104659447-2TIXCX557521XNG32HRV/ke17ZwdGBToddI8pDm48kPqQfq0L3n3wpHIsRapTfg8UqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKczo5Zn4xktlpMsMj-QlHXeMfNK6GwvtVkYEWiR8XAPyD3GfLCe_DXOSC_YcAacWL_/Spiritedpursuit_leelitumbe_devilspool_zambia-25.jpg",
      "https://t1.gstatic.com/images?q=tbn:ANd9GcS2_hj7udLWCLDFV6_QyfDcRYSN6zwkppEwtfif0TpY-Mc1g9xnR2-OE5Wewnu3T-X-V9MJZMD5FLfDe5DiMwadLQ",
      "https://lp-cms-production.imgix.net/2019-06/a70324f008ceee5c6e2e9e52c9ed4b27-livingstone-island.jpg?auto=format&fit=crop&ixlib=react-8.6.4&h=450&w=310&q=75&dpr=1",
      
    ],
    "description":
    "Taking its place alongside the Pyramids and the Serengeti, Victoria Falls (its original, pre-colonial name is Mosi-oa-Tunya – the ‘smoke that thunders’) is one of Africa’s original blockbusters. And although Zimbabwe and Zambia share it, Victoria Falls is a place all of its own.",
    "price": 2110
  },
  {
    "name": "Anse Lazio, Seychelles",
    "tagLine": "Top-Rated Tourist Attractions in the Seychelles",
    "image":
    "https://www.planetware.com/photos-large/SEY/seychelles-praslin-anse-lazio.jpg",
    "images": [
       "https://www.planetware.com/photos-large/SEY/seychelles-praslin-anse-lazio.jpg",
      "https://www.planetware.com/photos-large/SEY/seychelles-mahe-anse-intendance.jpg",
      "https://www.planetware.com/photos-large/SEY/seychelles-mahe-baie-lazare.jpg",
      "https://www.planetware.com/photos-large/SEY/seychelles-la-digue-island.jpg",
      "https://www.planetware.com/photos-large/SEY/seychelles-curieuse-island.jpg",
    ],
    "description":
    "The Seychelles lie east of Kenya, near the equator. Almost half their total land area is protected, and many of the islands and atolls are contained within marine sanctuaries.",
    "price": 1800
  },
  {
    "name": "Zanzibar Beaches, Tanzania",
    "tagLine": "Top-Rated Tourist Attractions in Tanzania",
    "image":
    "https://www.planetware.com/photos-large/TZA/tanzania-zanzibar-beach.jpg",
    "images": [
      "https://www.planetware.com/photos-large/TZA/tanzania-zanzibar-beach.jpg",
      "https://www.planetware.com/photos-large/TZA/tanzania-ngorongoro-crater.jpg",
      "https://www.planetware.com/photos-large/TZA/tanzania-lake-manyara-national-park.jpg",
      "https://www.planetware.com/photos-large/TZA/tanzania-mafia-island.jpg",
      "https://www.planetware.com/photos-large/TZA/tanzania-mount-kilimanjaro.jpg",
      "https://www.planetware.com/photos-large/TZA/tanzania-serengeti-national-park.jpg",
    ],
    "description":
    "Tanzania is home to some of Africa's most famous national parks and natural attractions, including majestic Mount Kilimanjaro. Consequently, the most popular things to do in Tanzania and the reason many people visit the country, are the safaris and wildlife related adventures",
    "price": 2000
  },
];
