/**
 * Family Moments App - Gallery Data
 *
 * This file contains the data for the image galleries displayed in the app.
 * It organizes images and captions for different family members into a structured format.
 *
 * Structure:
 *  - Each family member is represented as a key in the `GalleryData.gallery` map.
 *  - The value for each key is a list of maps, where each map contains:
 *      - 'path': The file path to the image asset.
 *      - 'caption': A descriptive caption for the image.
 *
 * Example:
 *  {
 *    'Papa': [
 *      {'path': 'assets/Papa/papa1.jpg', 'caption': 'My hero, my dad 👨‍👧‍👦'},
 *      {'path': 'assets/Papa/papa2.jpg', 'caption': 'Guiding us with wisdom 📖'},
 *    ],
 *    ...
 *  }
 *
 * Usage:
 *  - The data is accessed in main.dart to dynamically generate gallery buttons and display images.
 *  - Ensure all image paths and captions are accurate and assets are included in pubspec.yaml.
 */


class GalleryData {
  final Map<String, List<Map<String, String>>> images;

  GalleryData(this.images);

  static final GalleryData gallery = GalleryData(
    {
      'Papa': [
        {'path': 'assets/Papa/papa1.jpg', 'caption': 'My hero, my dad 👨‍👧‍👦'},
        {'path': 'assets/Papa/papa2.jpg', 'caption': 'Guiding us with wisdom 📖'},
        {'path': 'assets/Papa/papa3.jpg', 'caption': 'Strength of our family 💪'},
        {'path': 'assets/Papa/papa4.jpg', 'caption': 'Forever my role model 🌟'},
        {'path': 'assets/Papa/papa5.jpg', 'caption': 'A father\'s love is endless ❤️'},
        {'path': 'assets/Papa/papa6.jpg', 'caption': 'The pillar of our lives 🏛️'},
        {'path': 'assets/Papa/papa7.jpg', 'caption': 'Always there for us 🙏'},
      ],
      'Mummy': [
        {'path': 'assets/Mummy/mummy1.jpg', 'caption': 'The heart of our home ❤️'},
        {'path': 'assets/Mummy/mummy10.jpg', 'caption': 'A mother\'s love is endless 💞'},
        {'path': 'assets/Mummy/mummy11.jpg', 'caption': 'Forever our guiding light ✨'},
        {'path': 'assets/Mummy/mummy2.jpg', 'caption': 'My first teacher 📚'},
        {'path': 'assets/Mummy/mummy3.jpg', 'caption': 'Unconditional love 💕'},
        {'path': 'assets/Mummy/mummy4.jpg', 'caption': 'The warmth of our family 🏡'},
        {'path': 'assets/Mummy/mummy5.jpg', 'caption': 'Always caring and loving ❤️'},
        {'path': 'assets/Mummy/mummy6.jpg', 'caption': 'The strength behind us 💪'},
        {'path': 'assets/Mummy/mummy7.jpg', 'caption': 'Forever our inspiration 🌟'},
        {'path': 'assets/Mummy/Mummy8.jpg', 'caption': 'A mother\'s embrace 💕'},
        {'path': 'assets/Mummy/mummy9.jpg', 'caption': 'The light of our lives 🌟'},
      ],
      'Ashish': [
        {'path': 'assets/Ashish/Ashish1.jpg', 'caption': 'Living life to the fullest 🌈'},
        {'path': 'assets/Ashish/Ashish10.jpg', 'caption': 'Dream big, achieve bigger 🚀'},
        {'path': 'assets/Ashish/Ashish11.jpg', 'caption': 'Forever grateful for family ❤️'},
        {'path': 'assets/Ashish/Ashish12.jpg', 'caption': 'Chasing dreams with passion 🌟'},
        {'path': 'assets/Ashish/Ashish13.jpg', 'caption': 'A journey of growth 📈'},
        {'path': 'assets/Ashish/Ashish14.jpg', 'caption': 'Spreading positivity everywhere 🌸'},
        {'path': 'assets/Ashish/Ashish15.jpg', 'caption': 'A smile that inspires 😊'},
        {'path': 'assets/Ashish/Ashish16.jpg', 'caption': 'Forever learning and growing 📚'},
        {'path': 'assets/Ashish/Ashish17.jpg', 'caption': 'The joy of family moments ❤️'},
        {'path': 'assets/Ashish/Ashish18.jpg', 'caption': 'Living with gratitude 🙏'},
        {'path': 'assets/Ashish/Ashish19.jpg', 'caption': 'A heart full of dreams 💖'},
        {'path': 'assets/Ashish/Ashish3.jpg', 'caption': 'Cherishing every moment 🌟'},
        {'path': 'assets/Ashish/Ashish4.jpg', 'caption': 'Forever thankful for family ❤️'},
        {'path': 'assets/Ashish/Ashish5.jpg', 'caption': 'A life full of adventures 🌍'},
        {'path': 'assets/Ashish/Ashish6.jpg', 'caption': 'The power of positivity ✨'},
        {'path': 'assets/Ashish/Ashish7.jpg', 'caption': 'A journey of self-discovery 🌈'},
        {'path': 'assets/Ashish/Ashish8.jpg', 'caption': 'Forever chasing dreams 🚀'},
        {'path': 'assets/Ashish/Ashish9.jpg', 'caption': 'A life filled with love ❤️'},
      ],
      'Swati': [
        {'path': 'assets/Swati/Swati1.jpg', 'caption': 'The light of our lives 🌟'},
        {'path': 'assets/Swati/swati10.jpg', 'caption': 'Spreading joy everywhere 🌸'},
        {'path': 'assets/Swati/swati11.jpg', 'caption': 'A smile that brightens the day 😊'},
        {'path': 'assets/Swati/Swati12.jpg', 'caption': 'Forever our inspiration ✨'},
        {'path': 'assets/Swati/Swati13.jpg', 'caption': 'A heart full of love 💕'},
        {'path': 'assets/Swati/Swati14.jpg', 'caption': 'The joy of family moments ❤️'},
        {'path': 'assets/Swati/Swati15.jpg', 'caption': 'A life filled with happiness 🌈'},
        {'path': 'assets/Swati/Swati2.jpg', 'caption': 'Forever spreading positivity 🌟'},
        {'path': 'assets/Swati/Swati3.jpg', 'caption': 'A journey of self-discovery ✨'},
        {'path': 'assets/Swati/Swati4.jpg', 'caption': 'The power of kindness 💖'},
        {'path': 'assets/Swati/Swati5.jpg', 'caption': 'A smile that inspires 😊'},
        {'path': 'assets/Swati/Swati6.jpg', 'caption': 'Forever grateful for family ❤️'},
        {'path': 'assets/Swati/Swati7.jpg', 'caption': 'A heart full of dreams 💕'},
        {'path': 'assets/Swati/Swati8.jpg', 'caption': 'The joy of togetherness 🌟'},
        {'path': 'assets/Swati/Swati9.jpg', 'caption': 'A life full of love ❤️'},
      ],
      'Family ❤️': [
        {'path': 'assets/Family/family1.jpg', 'caption': 'Together we are unstoppable 🚀'},
        {'path': 'assets/Family/family10.jpg', 'caption': 'Love that binds us forever 💕'},
        {'path': 'assets/Family/family11.jpg', 'caption': 'Cherished family moments ❤️'},
        {'path': 'assets/Family/family12.jpg', 'caption': 'The strength of unity 💪'},
        {'path': 'assets/Family/family14.jpg', 'caption': 'A bond like no other 💞'},
        {'path': 'assets/Family/family15.jpg', 'caption': 'The joy of togetherness 🌟'},
        {'path': 'assets/Family/family16.jpg', 'caption': 'A family full of love ❤️'},
        {'path': 'assets/Family/family17.jpg', 'caption': 'The heart of our lives 💖'},
        {'path': 'assets/Family/family18.jpg', 'caption': 'Forever connected ♾️'},
        {'path': 'assets/Family/family19.jpg', 'caption': 'The warmth of home 🏡'},
        {'path': 'assets/Family/family2.jpg', 'caption': 'A family that laughs together 😂'},
        {'path': 'assets/Family/family20.jpg', 'caption': 'The power of family 💓'},
        {'path': 'assets/Family/family21.jpg', 'caption': 'A life full of blessings 🌈'},
        {'path': 'assets/Family/family22.jpg', 'caption': 'The joy of family moments ❤️'},
        {'path': 'assets/Family/family23.jpg', 'caption': 'Forever grateful for love 💕'},
        {'path': 'assets/Family/Family24.jpg', 'caption': 'A bond that never breaks 🔗'},
        {'path': 'assets/Family/Family25.jpg', 'caption': 'The strength of togetherness 💪'},
        {'path': 'assets/Family/Family26.jpg', 'caption': 'A family full of joy 😊'},
        {'path': 'assets/Family/family27.jpg', 'caption': 'The heart of our happiness ❤️'},
        {'path': 'assets/Family/family28.jpg', 'caption': 'Forever our safe haven 🛡️'},
        {'path': 'assets/Family/family29.jpg', 'caption': 'The joy of being together 🌟'},
        {'path': 'assets/Family/family3.jpg', 'caption': 'A family full of love ❤️'},
        {'path': 'assets/Family/family30.jpg', 'caption': 'The light of our lives 🌟'},
        {'path': 'assets/Family/family4.jpg', 'caption': 'A family that supports each other 💕'},
        {'path': 'assets/Family/family5.jpg', 'caption': 'The joy of family moments ❤️'},
        {'path': 'assets/Family/family6.jpg', 'caption': 'Forever grateful for family 🙏'},
        {'path': 'assets/Family/family7.jpg', 'caption': 'A bond like no other 💞'},
        {'path': 'assets/Family/family8.jpg', 'caption': 'The strength of unity 💪'},
        {'path': 'assets/Family/family9.jpg', 'caption': 'The warmth of home 🏡'},
      ],
    },
  );
}