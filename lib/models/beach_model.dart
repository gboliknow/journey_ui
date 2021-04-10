class BeachModel {
  String image;

  BeachModel(this.image);
}

List<BeachModel> beaches =
    beachesData.map((item) => BeachModel(item['image'])).toList();

var beachesData = [
  {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-maldives.jpg",
       
  },
  {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-bora-bora.jpg",
        
  },
  {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-palawan.jpg",
      
  },
  {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-seychelles.jpg",
       
  },
  {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-santorini.jpg",
        
  },
  {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-cook-islands.jpg",
        
  },
  {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-bali.jpg",
        
  },
   {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-dalmatian-islands.jpg",
        
  },
     {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-fiji.jpg",
        
  },
     {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-kauai.jpg",
        
  },
     {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-st-lucia.jpg",
        
  },
     {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-capri.jpg",
        
  },
     {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-ko-phi-phi.jpg",
        
  },
     {
    "image":
    "https://www.planetware.com/wpimages/2020/04/world-most-beautiful-islands-whitsunday-islands-australia.jpg",
        
  },
     {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-sardinia.jpg",
        
  },
     {
    "image":
    "https://www.planetware.com/photos-large/SEY/best-islands-st-barts.jpg",
        
  },
   {
    "image":
    "https://www.planetware.com/wpimages/2020/04/world-most-beautiful-islands-the-bahamas.jpg",
        
  },
];
