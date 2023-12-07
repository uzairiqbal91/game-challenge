import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gamechallange/data/models/game_detail_response.dart';
import 'package:gamechallange/data/models/games_response.dart';

import '../../../../helpers/json_reader.dart';
import '../../../../helpers/paths.dart';

void main() {
  final gameDetailResponse = GamesDetailResponse.fromJson({
    "id": 494383,
    "slug": "five-nights-at-freddys-security-breach",
    "name": "Five Nights at Freddy's: Security Breach",
    "name_original": "Five Nights at Freddy's: Security Breach",
    "description":
        "<p>THE NEXT CHAPTER IN FEAR<br />\nFive Nights at Freddy’s: Security Breach is the latest installment of the family-friendly horror games loved by millions of players from all over the globe. Play as Gregory, a young boy trapped overnight in Freddy Fazbear’s Mega Pizzaplex. With the help of Freddy Fazbear himself, Gregory must survive the near-unstoppable hunt of reimagined Five Nights at Freddy’s characters - as well as new, horrific threats.<br />\nTHE HUNTERS AND THE HUNTED - Once nighttime protocols are initiated, the animatronics at Freddy Fazbear’s Mega Pizzaplex will relentlessly pursue all intruders. Glamrock Chica, Roxanne Wolf, Montgomery Gator, and the Pizzaplex’s security guard, Vanessa, will turn over every Cotton Candy Pizza Stand if they have to - it’s not wise to stay in one place for too long.<br />\nADAPT TO SURVIVE - Access the building’s security cameras to survey the environment and plan your route through danger. Distract enemies by knocking over paint cans and toys - just slip away before enemies are drawn to your location. Hop into hiding spots and allow danger to pass, or try to outrun your pursuers. Play your way, but be prepared to adapt.<br />\nEXPLORE AND DISCOVER - Freddy Fazbear’s Mega Pizzaplex offers a variety of attractions for guests to enjoy - Monty Golf, Roxy Raceway, Bonnie Bowl, the sewers, and… Sewers? The Pizzaplex is vast and has no shortage of goodies to discover.</p>",
    "metacritic": 64,
    "metacritic_platforms": [
      {
        "metascore": 64,
        "url":
            "https://www.metacritic.com/game/pc/five-nights-at-freddys-security-breach",
        "platform": {"platform": 4, "name": "PC", "slug": "pc"}
      }
    ],
    "released": "2021-12-16",
    "tba": false,
    "updated": "2023-11-27T14:13:26",
    "background_image":
        "https://media.rawg.io/media/games/f5b/f5b0a8232e747c03aa6b56ce2d2af49a.jpg",
    "background_image_additional":
        "https://media.rawg.io/media/screenshots/4b9/4b9d2db680a57f516d9c8150c5cb338c.jpg",
    "website": "https://www.steelwoolstudios.com/security-breach",
    "rating": 2.88,
    "rating_top": 1,
    "ratings": [
      {"id": 1, "title": "skip", "count": 15, "percent": 31.25},
      {"id": 4, "title": "recommended", "count": 14, "percent": 29.17},
      {"id": 3, "title": "meh", "count": 14, "percent": 29.17},
      {"id": 5, "title": "exceptional", "count": 5, "percent": 10.42}
    ],
    "reactions": {},
    "added": 194,
    "added_by_status": {
      "yet": 13,
      "owned": 110,
      "beaten": 35,
      "toplay": 20,
      "dropped": 13,
      "playing": 3
    },
    "playtime": 9,
    "screenshots_count": 6,
    "movies_count": 0,
    "creators_count": 2,
    "achievements_count": 2,
    "parent_achievements_count": 0,
    "reddit_url": "https://www.reddit.com/r/FNaFSecurityBreach/",
    "reddit_name": "",
    "reddit_description": "",
    "reddit_logo": "",
    "reddit_count": 132,
    "twitch_count": 176,
    "youtube_count": 0,
    "reviews_text_count": 0,
    "ratings_count": 48,
    "suggestions_count": 255,
    "alternative_names": [],
    "metacritic_url":
        "https://www.metacritic.com/game/pc/five-nights-at-freddys-security-breach",
    "parents_count": 0,
    "additions_count": 0,
    "game_series_count": 10,
    "user_game": null,
    "reviews_count": 48,
    "saturated_color": "0f0f0f",
    "dominant_color": "0f0f0f",
    "parent_platforms": [
      {
        "platform": {"id": 1, "name": "PC", "slug": "pc"}
      },
      {
        "platform": {"id": 2, "name": "PlayStation", "slug": "playstation"}
      },
      {
        "platform": {"id": 3, "name": "Xbox", "slug": "xbox"}
      }
    ],
    "platforms": [
      {
        "platform": {
          "id": 187,
          "name": "PlayStation 5",
          "slug": "playstation5",
          "image": null,
          "year_end": null,
          "year_start": 2020,
          "games_count": 970,
          "image_background":
              "https://media.rawg.io/media/games/709/709bf81f874ce5d25d625b37b014cb63.jpg"
        },
        "released_at": "2021-12-16",
        "requirements": {}
      },
      {
        "platform": {
          "id": 4,
          "name": "PC",
          "slug": "pc",
          "image": null,
          "year_end": null,
          "year_start": null,
          "games_count": 522595,
          "image_background":
              "https://media.rawg.io/media/games/942/9424d6bb763dc38d9378b488603c87fa.jpg"
        },
        "released_at": "2021-12-16",
        "requirements": {
          "minimum":
              "Minimum:\nOS: Windows 10 (64 bit)\nProcessor: AMD Ryzen 5 3600, Core i5 6600K\nMemory: 8 GB RAM\nGraphics: Nvidia GeForce GTX 1050 Ti\nDirectX: Version 12\nStorage: 80 GB available space",
          "recommended":
              "Recommended:\nOS: Windows 10 (64 bit)\nProcessor: AMD Ryzen 7 2700X, Intel Core i7 4790\nMemory: 16 GB RAM\nDirectX: Version 12\nStorage: 80 GB available space"
        }
      },
      {
        "platform": {
          "id": 1,
          "name": "Xbox One",
          "slug": "xbox-one",
          "image": null,
          "year_end": null,
          "year_start": null,
          "games_count": 5566,
          "image_background":
              "https://media.rawg.io/media/games/942/9424d6bb763dc38d9378b488603c87fa.jpg"
        },
        "released_at": "2021-12-16",
        "requirements": {}
      },
      {
        "platform": {
          "id": 186,
          "name": "Xbox Series S/X",
          "slug": "xbox-series-x",
          "image": null,
          "year_end": null,
          "year_start": 2020,
          "games_count": 838,
          "image_background":
              "https://media.rawg.io/media/games/739/73990e3ec9f43a9e8ecafe207fa4f368.jpg"
        },
        "released_at": "2021-12-16",
        "requirements": {}
      },
      {
        "platform": {
          "id": 18,
          "name": "PlayStation 4",
          "slug": "playstation4",
          "image": null,
          "year_end": null,
          "year_start": null,
          "games_count": 6737,
          "image_background":
              "https://media.rawg.io/media/games/9fa/9fa63622543e5d4f6d99aa9d73b043de.jpg"
        },
        "released_at": "2021-12-16",
        "requirements": {}
      }
    ],
    "stores": [
      {
        "id": 707650,
        "url": "",
        "store": {
          "id": 1,
          "name": "Steam",
          "slug": "steam",
          "domain": "store.steampowered.com",
          "games_count": 85953,
          "image_background":
              "https://media.rawg.io/media/games/4be/4be6a6ad0364751a96229c56bf69be59.jpg"
        }
      },
      {
        "id": 724066,
        "url": "",
        "store": {
          "id": 3,
          "name": "PlayStation Store",
          "slug": "playstation-store",
          "domain": "store.playstation.com",
          "games_count": 7869,
          "image_background":
              "https://media.rawg.io/media/games/562/562553814dd54e001a541e4ee83a591c.jpg"
        }
      }
    ],
    "developers": [
      {
        "id": 3687,
        "name": "Steel Wool Studios",
        "slug": "steel-wool-studios",
        "games_count": 11,
        "image_background":
            "https://media.rawg.io/media/screenshots/6c6/6c64def73d50f35d48607c6e3da4a480.jpeg"
      }
    ],
    "genres": [
      {
        "id": 4,
        "name": "Action",
        "slug": "action",
        "games_count": 176969,
        "image_background":
            "https://media.rawg.io/media/games/f87/f87457e8347484033cb34cde6101d08d.jpg"
      },
      {
        "id": 3,
        "name": "Adventure",
        "slug": "adventure",
        "games_count": 136668,
        "image_background":
            "https://media.rawg.io/media/games/63f/63f0e68688cad279ed38cde931dbfcdb.jpg"
      },
      {
        "id": 51,
        "name": "Indie",
        "slug": "indie",
        "games_count": 60138,
        "image_background":
            "https://media.rawg.io/media/games/713/713269608dc8f2f40f5a670a14b2de94.jpg"
      }
    ],
    "tags": [
      {
        "id": 31,
        "name": "Singleplayer",
        "slug": "singleplayer",
        "language": "eng",
        "games_count": 215290,
        "image_background":
            "https://media.rawg.io/media/games/f46/f466571d536f2e3ea9e815ad17177501.jpg"
      },
      {
        "id": 40847,
        "name": "Steam Achievements",
        "slug": "steam-achievements",
        "language": "eng",
        "games_count": 34618,
        "image_background":
            "https://media.rawg.io/media/games/f46/f466571d536f2e3ea9e815ad17177501.jpg"
      },
      {
        "id": 40836,
        "name": "Full controller support",
        "slug": "full-controller-support",
        "language": "eng",
        "games_count": 16219,
        "image_background":
            "https://media.rawg.io/media/games/942/9424d6bb763dc38d9378b488603c87fa.jpg"
      },
      {
        "id": 118,
        "name": "Story Rich",
        "slug": "story-rich",
        "language": "eng",
        "games_count": 19988,
        "image_background":
            "https://media.rawg.io/media/games/7a2/7a2500ee8b2c0e1ff268bb4479463dea.jpg"
      },
      {
        "id": 8,
        "name": "First-Person",
        "slug": "first-person",
        "language": "eng",
        "games_count": 30078,
        "image_background":
            "https://media.rawg.io/media/games/587/587588c64afbff80e6f444eb2e46f9da.jpg"
      },
      {
        "id": 16,
        "name": "Horror",
        "slug": "horror",
        "language": "eng",
        "games_count": 43102,
        "image_background":
            "https://media.rawg.io/media/games/c80/c80bcf321da44d69b18a06c04d942662.jpg"
      },
      {
        "id": 6,
        "name": "Exploration",
        "slug": "exploration",
        "language": "eng",
        "games_count": 21222,
        "image_background":
            "https://media.rawg.io/media/games/569/56978b5a77f13aa2ec5d09ec81d01cad.jpg"
      },
      {
        "id": 15,
        "name": "Stealth",
        "slug": "stealth",
        "language": "eng",
        "games_count": 6008,
        "image_background":
            "https://media.rawg.io/media/games/73e/73eecb8909e0c39fb246f457b5d6cbbe.jpg"
      },
      {
        "id": 69,
        "name": "Action-Adventure",
        "slug": "action-adventure",
        "language": "eng",
        "games_count": 14986,
        "image_background":
            "https://media.rawg.io/media/games/021/021c4e21a1824d2526f925eff6324653.jpg"
      },
      {
        "id": 37796,
        "name": "exclusive",
        "slug": "exclusive",
        "language": "eng",
        "games_count": 4501,
        "image_background":
            "https://media.rawg.io/media/games/2a2/2a2f9a0035544500e59a171c7038ec3a.jpg"
      },
      {
        "id": 17,
        "name": "Survival Horror",
        "slug": "survival-horror",
        "language": "eng",
        "games_count": 8029,
        "image_background":
            "https://media.rawg.io/media/games/c11/c11a0b92b4c28f2e0db489f430142653.jpg"
      },
      {
        "id": 107,
        "name": "Family Friendly",
        "slug": "family-friendly",
        "language": "eng",
        "games_count": 6439,
        "image_background":
            "https://media.rawg.io/media/games/85c/85c8ae70e7cdf0105f06ef6bdce63b8b.jpg"
      },
      {
        "id": 165,
        "name": "Colorful",
        "slug": "colorful",
        "language": "eng",
        "games_count": 20108,
        "image_background":
            "https://media.rawg.io/media/games/fc8/fc838d98c9b944e6a15176eabf40bee8.jpg"
      },
      {
        "id": 571,
        "name": "3D",
        "slug": "3d",
        "language": "eng",
        "games_count": 80321,
        "image_background":
            "https://media.rawg.io/media/games/d97/d97f663b752a6484df105993f17abb49.jpg"
      },
      {
        "id": 50,
        "name": "Sexual Content",
        "slug": "sexual-content",
        "language": "eng",
        "games_count": 5478,
        "image_background":
            "https://media.rawg.io/media/games/64e/64e4fc48c5d977188e8c47287f2a2cef.jpg"
      },
      {
        "id": 218,
        "name": "Multiple Endings",
        "slug": "multiple-endings",
        "language": "eng",
        "games_count": 7928,
        "image_background":
            "https://media.rawg.io/media/games/3b5/3b56220d6038b8b1ad66c4d05ef95215.jpg"
      },
      {
        "id": 197,
        "name": "Robots",
        "slug": "robots",
        "language": "eng",
        "games_count": 7981,
        "image_background":
            "https://media.rawg.io/media/games/fd6/fd6a1eecd3ec0f875f1924f3656b7dd9.jpg"
      },
      {
        "id": 164,
        "name": "Cartoony",
        "slug": "cartoony",
        "language": "eng",
        "games_count": 4638,
        "image_background":
            "https://media.rawg.io/media/games/621/6217d52e35fe5137b3746367827e80e0.jpg"
      },
      {
        "id": 183,
        "name": "Thriller",
        "slug": "thriller",
        "language": "eng",
        "games_count": 2228,
        "image_background":
            "https://media.rawg.io/media/games/f40/f407a80be4c604d013e4b9d1e0c6dbef.jpg"
      },
      {
        "id": 202,
        "name": "Artificial Intelligence",
        "slug": "artificial-intelligence",
        "language": "eng",
        "games_count": 1129,
        "image_background":
            "https://media.rawg.io/media/games/391/391954934d459b8fe78d87a8a68c71c6.jpg"
      }
    ],
    "publishers": [
      {
        "id": 34022,
        "name": "ScottGames",
        "slug": "scottgames",
        "games_count": 2,
        "image_background":
            "https://media.rawg.io/media/screenshots/89a/89afc622bafe66a47ae35468b70528de.jpg"
      }
    ],
    "esrb_rating": {"id": 3, "name": "Teen", "slug": "teen"},
    "clip": null,
    "description_raw":
        "THE NEXT CHAPTER IN FEAR\r\nFive Nights at Freddy’s: Security Breach is the latest installment of the family-friendly horror games loved by millions of players from all over the globe. Play as Gregory, a young boy trapped overnight in Freddy Fazbear’s Mega Pizzaplex. With the help of Freddy Fazbear himself, Gregory must survive the near-unstoppable hunt of reimagined Five Nights at Freddy’s characters - as well as new, horrific threats.\r\nTHE HUNTERS AND THE HUNTED - Once nighttime protocols are initiated, the animatronics at Freddy Fazbear’s Mega Pizzaplex will relentlessly pursue all intruders. Glamrock Chica, Roxanne Wolf, Montgomery Gator, and the Pizzaplex’s security guard, Vanessa, will turn over every Cotton Candy Pizza Stand if they have to - it’s not wise to stay in one place for too long.\r\nADAPT TO SURVIVE - Access the building’s security cameras to survey the environment and plan your route through danger. Distract enemies by knocking over paint cans and toys - just slip away before enemies are drawn to your location. Hop into hiding spots and allow danger to pass, or try to outrun your pursuers. Play your way, but be prepared to adapt.\r\nEXPLORE AND DISCOVER - Freddy Fazbear’s Mega Pizzaplex offers a variety of attractions for guests to enjoy - Monty Golf, Roxy Raceway, Bonnie Bowl, the sewers, and… Sewers? The Pizzaplex is vast and has no shortage of goodies to discover."
  });

  test('should return valid model from json', () {
    /// arrange
    final jsonMap = json.decode(jsonReader(successGameDetailPath));

    /// act
    final result =
        GamesDetailResponse.fromJson(jsonMap as Map<String, dynamic>);

    /// assert
    expect(result, equals(gameDetailResponse));
  });

  test('should return a valid json map containing proper data', () {
    /// act
    final result = gameDetailResponse.toJson();
    final developersJson = [
      {
        "id": 3687,
        "name": "Steel Wool Studios",
        "slug": "steel-wool-studios",
        "games_count": 11,
        "image_background":
        "https://media.rawg.io/media/screenshots/6c6/6c64def73d50f35d48607c6e3da4a480.jpeg"
      }
    ].map((e) => Developer.fromJson(e)).toList();

    final publishersJson = [
      {
        "id": 34022,
        "name": "ScottGames",
        "slug": "scottgames",
        "games_count": 2,
        "image_background":
        "https://media.rawg.io/media/screenshots/89a/89afc622bafe66a47ae35468b70528de.jpg"
      }
    ].map((e) => Developer.fromJson(e)).toList();

    final genresJson = [
      {
        "id": 4,
        "name": "Action",
        "slug": "action",
        "games_count": 176969,
        "image_background":
        "https://media.rawg.io/media/games/f87/f87457e8347484033cb34cde6101d08d.jpg"
      },
      {
        "id": 3,
        "name": "Adventure",
        "slug": "adventure",
        "games_count": 136668,
        "image_background":
        "https://media.rawg.io/media/games/63f/63f0e68688cad279ed38cde931dbfcdb.jpg"
      },
      {
        "id": 51,
        "name": "Indie",
        "slug": "indie",
        "games_count": 60138,
        "image_background":
        "https://media.rawg.io/media/games/713/713269608dc8f2f40f5a670a14b2de94.jpg"
      }
    ].map((e) => Developer.fromJson(e)).toList();

    /// arrange
    final expectedJson = {
      "id": 494383,
      "name": "Five Nights at Freddy's: Security Breach",
      "description":
          "<p>THE NEXT CHAPTER IN FEAR<br />\nFive Nights at Freddy’s: Security Breach is the latest installment of the family-friendly horror games loved by millions of players from all over the globe. Play as Gregory, a young boy trapped overnight in Freddy Fazbear’s Mega Pizzaplex. With the help of Freddy Fazbear himself, Gregory must survive the near-unstoppable hunt of reimagined Five Nights at Freddy’s characters - as well as new, horrific threats.<br />\nTHE HUNTERS AND THE HUNTED - Once nighttime protocols are initiated, the animatronics at Freddy Fazbear’s Mega Pizzaplex will relentlessly pursue all intruders. Glamrock Chica, Roxanne Wolf, Montgomery Gator, and the Pizzaplex’s security guard, Vanessa, will turn over every Cotton Candy Pizza Stand if they have to - it’s not wise to stay in one place for too long.<br />\nADAPT TO SURVIVE - Access the building’s security cameras to survey the environment and plan your route through danger. Distract enemies by knocking over paint cans and toys - just slip away before enemies are drawn to your location. Hop into hiding spots and allow danger to pass, or try to outrun your pursuers. Play your way, but be prepared to adapt.<br />\nEXPLORE AND DISCOVER - Freddy Fazbear’s Mega Pizzaplex offers a variety of attractions for guests to enjoy - Monty Golf, Roxy Raceway, Bonnie Bowl, the sewers, and… Sewers? The Pizzaplex is vast and has no shortage of goodies to discover.</p>",
      "developers": developersJson,
      "genres": genresJson,
      "publishers": publishersJson
    };

    /// assert
    expect(result, equals(expectedJson));
  });
}
