import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gamechallange/data/models/games_response.dart';

import '../../../../helpers/json_reader.dart';
import '../../../../helpers/paths.dart';

void main() {
  final listGames = [
    Game.fromJson({
      "slug": "five-nights-at-freddys-security-breach",
      "name": "Five Nights at Freddy's: Security Breach",
      "playtime": 9,
      "platforms": [
        {
          "platform": {"id": 4, "name": "PC", "slug": "pc"}
        },
        {
          "platform": {
            "id": 187,
            "name": "PlayStation 5",
            "slug": "playstation5"
          }
        },
        {
          "platform": {"id": 1, "name": "Xbox One", "slug": "xbox-one"}
        },
        {
          "platform": {
            "id": 18,
            "name": "PlayStation 4",
            "slug": "playstation4"
          }
        },
        {
          "platform": {
            "id": 186,
            "name": "Xbox Series S/X",
            "slug": "xbox-series-x"
          }
        }
      ],
      "stores": [
        {
          "store": {"id": 1, "name": "Steam", "slug": "steam"}
        },
        {
          "store": {
            "id": 3,
            "name": "PlayStation Store",
            "slug": "playstation-store"
          }
        }
      ],
      "released": "2021-12-16",
      "tba": false,
      "background_image":
          "https://media.rawg.io/media/games/f5b/f5b0a8232e747c03aa6b56ce2d2af49a.jpg",
      "rating": 2.88,
      "rating_top": 1,
      "ratings": [
        {"id": 1, "title": "skip", "count": 15, "percent": 31.25},
        {"id": 4, "title": "recommended", "count": 14, "percent": 29.17},
        {"id": 3, "title": "meh", "count": 14, "percent": 29.17},
        {"id": 5, "title": "exceptional", "count": 5, "percent": 10.42}
      ],
      "ratings_count": 48,
      "reviews_text_count": 0,
      "added": 194,
      "added_by_status": {
        "yet": 13,
        "owned": 110,
        "beaten": 35,
        "toplay": 20,
        "dropped": 13,
        "playing": 3
      },
      "metacritic": 64,
      "suggestions_count": 255,
      "updated": "2023-11-27T14:13:26",
      "id": 494383,
      "score": null,
      "clip": null,
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
          "id": 42396,
          "name": "Для одного игрока",
          "slug": "dlia-odnogo-igroka",
          "language": "rus",
          "games_count": 41769,
          "image_background":
              "https://media.rawg.io/media/games/bc0/bc06a29ceac58652b684deefe7d56099.jpg"
        },
        {
          "id": 42417,
          "name": "Экшен",
          "slug": "ekshen",
          "language": "rus",
          "games_count": 36350,
          "image_background":
              "https://media.rawg.io/media/games/6fc/6fcf4cd3b17c288821388e6085bb0fc9.jpg"
        },
        {
          "id": 42392,
          "name": "Приключение",
          "slug": "prikliuchenie",
          "language": "rus",
          "games_count": 34255,
          "image_background":
              "https://media.rawg.io/media/games/d82/d82990b9c67ba0d2d09d4e6fa88885a7.jpg"
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
          "id": 42398,
          "name": "Инди",
          "slug": "indi-2",
          "language": "rus",
          "games_count": 50944,
          "image_background":
              "https://media.rawg.io/media/games/5be/5bec14622f6faf804a592176577c1347.jpg"
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
          "id": 42394,
          "name": "Глубокий сюжет",
          "slug": "glubokii-siuzhet",
          "language": "rus",
          "games_count": 10848,
          "image_background":
              "https://media.rawg.io/media/games/4be/4be6a6ad0364751a96229c56bf69be59.jpg"
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
          "id": 42429,
          "name": "От первого лица",
          "slug": "ot-pervogo-litsa",
          "language": "rus",
          "games_count": 9150,
          "image_background":
              "https://media.rawg.io/media/games/8e4/8e4de3f54ac659e08a7ba6a2b731682a.jpg"
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
          "id": 42439,
          "name": "Стелс",
          "slug": "stels",
          "language": "rus",
          "games_count": 1870,
          "image_background":
              "https://media.rawg.io/media/games/15c/15c95a4915f88a3e89c821526afe05fc.jpg"
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
          "id": 42562,
          "name": "Для всей семьи",
          "slug": "dlia-vsei-semi",
          "language": "rus",
          "games_count": 6733,
          "image_background":
              "https://media.rawg.io/media/games/2a2/2a2f9a0035544500e59a171c7038ec3a.jpg"
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
          "id": 42471,
          "name": "Хоррор на выживание",
          "slug": "khorror-na-vyzhivanie",
          "language": "rus",
          "games_count": 2666,
          "image_background":
              "https://media.rawg.io/media/games/f3e/f3eec35c6218dcfd93a537751e6bfa61.jpg"
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
          "id": 42601,
          "name": "Цветастая",
          "slug": "tsvetastaia",
          "language": "rus",
          "games_count": 11549,
          "image_background":
              "https://media.rawg.io/media/games/51c/51c430f1795c79b78f863a9f22dc422d.jpg"
        },
        {
          "id": 42490,
          "name": "Приключенческий экшен",
          "slug": "prikliuchencheskii-ekshen",
          "language": "rus",
          "games_count": 7374,
          "image_background":
              "https://media.rawg.io/media/games/718/71891d2484a592d871e91dc826707e1c.jpg"
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
          "id": 42405,
          "name": "Сексуальный контент",
          "slug": "seksualnyi-kontent",
          "language": "rus",
          "games_count": 5453,
          "image_background":
              "https://media.rawg.io/media/games/11f/11fd681c312c14644ab360888dba3486.jpg"
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
          "id": 42630,
          "name": "Роботы",
          "slug": "roboty",
          "language": "rus",
          "games_count": 1582,
          "image_background":
              "https://media.rawg.io/media/screenshots/dc2/dc2814dc50d61be1ea4fcd5d3c03ddb6.jpg"
        },
        {
          "id": 42571,
          "name": "Мультипликация",
          "slug": "multiplikatsiia",
          "language": "rus",
          "games_count": 4696,
          "image_background":
              "https://media.rawg.io/media/games/e44/e445335e611b4ccf03af71fffcbd30a4.jpg"
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
          "id": 66533,
          "name": "Исследования",
          "slug": "issledovaniia",
          "language": "rus",
          "games_count": 6549,
          "image_background":
              "https://media.rawg.io/media/games/0f4/0f4f4764555736eebfeb01571e44e99e.jpg"
        },
        {
          "id": 42513,
          "name": "Триллер",
          "slug": "triller",
          "language": "rus",
          "games_count": 1220,
          "image_background":
              "https://media.rawg.io/media/games/07a/07a74470a2618fd71945db0619602baf.jpg"
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
          "id": 64060,
          "name": "Несколько концовок",
          "slug": "neskolko-kontsovok",
          "language": "rus",
          "games_count": 3072,
          "image_background":
              "https://media.rawg.io/media/games/b97/b97f47949ef696b99ed9e9160e89fb12.jpg"
        },
        {
          "id": 42697,
          "name": "Искусственный интеллект",
          "slug": "iskusstvennyi-intellekt",
          "language": "rus",
          "games_count": 1154,
          "image_background":
              "https://media.rawg.io/media/games/1a3/1a357f93719bb57fab9e52a8b5d33eab.jpg"
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
      "user_game": null,
      "reviews_count": 48,
      "saturated_color": "0f0f0f",
      "dominant_color": "0f0f0f",
      "short_screenshots": [
        {
          "id": -1,
          "image":
              "https://media.rawg.io/media/games/f5b/f5b0a8232e747c03aa6b56ce2d2af49a.jpg"
        },
        {
          "id": 3157696,
          "image":
              "https://media.rawg.io/media/screenshots/b0f/b0f861b514a34b00a6053e900a332cce.jpg"
        },
        {
          "id": 3157697,
          "image":
              "https://media.rawg.io/media/screenshots/7fc/7fc885d61e3c201a494976e3c9c8f5f7.jpg"
        },
        {
          "id": 3157698,
          "image":
              "https://media.rawg.io/media/screenshots/e62/e6256b1e3d5dfffa027ae946db07d1ff.jpg"
        },
        {
          "id": 3157699,
          "image":
              "https://media.rawg.io/media/screenshots/bd9/bd9849456ac0a56cf8f1914de031abc4.jpg"
        },
        {
          "id": 3157700,
          "image":
              "https://media.rawg.io/media/screenshots/4b9/4b9d2db680a57f516d9c8150c5cb338c.jpg"
        },
        {
          "id": 3157701,
          "image":
              "https://media.rawg.io/media/screenshots/215/215f0806391d2fae9dce2f8b18d4c725.jpg"
        }
      ],
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
      "genres": [
        {"id": 51, "name": "Indie", "slug": "indie"},
        {"id": 3, "name": "Adventure", "slug": "adventure"},
        {"id": 4, "name": "Action", "slug": "action"}
      ]
    }),
    Game.fromJson({
      "slug": "alfred-hitchcock-vertigo",
      "name": "Alfred Hitchcock – Vertigo",
      "playtime": 2,
      "platforms": [
        {
          "platform": {"id": 4, "name": "PC", "slug": "pc"}
        },
        {
          "platform": {
            "id": 187,
            "name": "PlayStation 5",
            "slug": "playstation5"
          }
        },
        {
          "platform": {"id": 1, "name": "Xbox One", "slug": "xbox-one"}
        },
        {
          "platform": {
            "id": 18,
            "name": "PlayStation 4",
            "slug": "playstation4"
          }
        },
        {
          "platform": {
            "id": 186,
            "name": "Xbox Series S/X",
            "slug": "xbox-series-x"
          }
        },
        {
          "platform": {
            "id": 7,
            "name": "Nintendo Switch",
            "slug": "nintendo-switch"
          }
        }
      ],
      "stores": [
        {
          "store": {"id": 1, "name": "Steam", "slug": "steam"}
        },
        {
          "store": {"id": 5, "name": "GOG", "slug": "gog"}
        },
        {
          "store": {"id": 11, "name": "Epic Games", "slug": "epic-games"}
        }
      ],
      "released": "2021-12-16",
      "tba": false,
      "background_image":
          "https://media.rawg.io/media/games/074/074e642bdfa4a6b774977a2222dfd4ea.jpg",
      "rating": 3.68,
      "rating_top": 4,
      "ratings": [
        {"id": 4, "title": "recommended", "count": 9, "percent": 36.0},
        {"id": 5, "title": "exceptional", "count": 7, "percent": 28.0},
        {"id": 3, "title": "meh", "count": 6, "percent": 24.0},
        {"id": 1, "title": "skip", "count": 3, "percent": 12.0}
      ],
      "ratings_count": 25,
      "reviews_text_count": 0,
      "added": 215,
      "added_by_status": {
        "yet": 19,
        "owned": 129,
        "beaten": 17,
        "toplay": 41,
        "dropped": 8,
        "playing": 1
      },
      "metacritic": null,
      "suggestions_count": 174,
      "updated": "2023-09-22T18:07:51",
      "id": 622518,
      "score": null,
      "clip": null,
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
          "id": 42396,
          "name": "Для одного игрока",
          "slug": "dlia-odnogo-igroka",
          "language": "rus",
          "games_count": 41769,
          "image_background":
              "https://media.rawg.io/media/games/bc0/bc06a29ceac58652b684deefe7d56099.jpg"
        },
        {
          "id": 42392,
          "name": "Приключение",
          "slug": "prikliuchenie",
          "language": "rus",
          "games_count": 34255,
          "image_background":
              "https://media.rawg.io/media/games/d82/d82990b9c67ba0d2d09d4e6fa88885a7.jpg"
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
          "id": 42441,
          "name": "От третьего лица",
          "slug": "ot-tretego-litsa",
          "language": "rus",
          "games_count": 6028,
          "image_background":
              "https://media.rawg.io/media/games/20a/20aa03a10cda45239fe22d035c0ebe64.jpg"
        },
        {
          "id": 149,
          "name": "Third Person",
          "slug": "third-person",
          "language": "eng",
          "games_count": 10509,
          "image_background":
              "https://media.rawg.io/media/games/f87/f87457e8347484033cb34cde6101d08d.jpg"
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
          "id": 69,
          "name": "Action-Adventure",
          "slug": "action-adventure",
          "language": "eng",
          "games_count": 14986,
          "image_background":
              "https://media.rawg.io/media/games/021/021c4e21a1824d2526f925eff6324653.jpg"
        },
        {
          "id": 42477,
          "name": "Мрачная",
          "slug": "mrachnaia",
          "language": "rus",
          "games_count": 4410,
          "image_background":
              "https://media.rawg.io/media/games/744/744adc36e6573dd67a0cb0e373738d19.jpg"
        },
        {
          "id": 41,
          "name": "Dark",
          "slug": "dark",
          "language": "eng",
          "games_count": 14910,
          "image_background":
              "https://media.rawg.io/media/games/59a/59a3ebcba3d08c51532c6ca877aff256.jpg"
        },
        {
          "id": 42390,
          "name": "Решения с последствиями",
          "slug": "resheniia-s-posledstviiami",
          "language": "rus",
          "games_count": 4706,
          "image_background":
              "https://media.rawg.io/media/games/c81/c812e158129e00c9b0f096ae8a0bb7d6.jpg"
        },
        {
          "id": 42490,
          "name": "Приключенческий экшен",
          "slug": "prikliuchencheskii-ekshen",
          "language": "rus",
          "games_count": 7374,
          "image_background":
              "https://media.rawg.io/media/games/718/71891d2484a592d871e91dc826707e1c.jpg"
        },
        {
          "id": 145,
          "name": "Choices Matter",
          "slug": "choices-matter",
          "language": "eng",
          "games_count": 4494,
          "image_background":
              "https://media.rawg.io/media/games/704/704f831d2d132e9614931f1c4eab9e86.jpg"
        },
        {
          "id": 110,
          "name": "Cinematic",
          "slug": "cinematic",
          "language": "eng",
          "games_count": 1750,
          "image_background":
              "https://media.rawg.io/media/games/5bf/5bf88a28de96321c86561a65ee48e6c2.jpg"
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
          "id": 42623,
          "name": "Кинематографичная",
          "slug": "kinematografichnaia",
          "language": "rus",
          "games_count": 1657,
          "image_background":
              "https://media.rawg.io/media/games/0af/0af85e8edddfa55368e47c539914a220.jpg"
        },
        {
          "id": 142,
          "name": "Detective",
          "slug": "detective",
          "language": "eng",
          "games_count": 2965,
          "image_background":
              "https://media.rawg.io/media/games/cee/cee577e2097a59b77193fe2bce94667d.jpg"
        },
        {
          "id": 42526,
          "name": "Детектив",
          "slug": "detektiv",
          "language": "rus",
          "games_count": 1532,
          "image_background":
              "https://media.rawg.io/media/games/b2c/b2c9c6115114c8f7d461b5430e8a7d4a.jpg"
        },
        {
          "id": 209,
          "name": "Drama",
          "slug": "drama",
          "language": "eng",
          "games_count": 3391,
          "image_background":
              "https://media.rawg.io/media/games/214/2140885d34e3a3398b45036e5d870971.jpg"
        },
        {
          "id": 42650,
          "name": "Драма",
          "slug": "drama-2",
          "language": "rus",
          "games_count": 2782,
          "image_background":
              "https://media.rawg.io/media/screenshots/e97/e97020b39abc864e3cdf4e7e564c402c.jpg"
        },
        {
          "id": 66533,
          "name": "Исследования",
          "slug": "issledovaniia",
          "language": "rus",
          "games_count": 6549,
          "image_background":
              "https://media.rawg.io/media/games/0f4/0f4f4764555736eebfeb01571e44e99e.jpg"
        },
        {
          "id": 200,
          "name": "Narration",
          "slug": "narration",
          "language": "eng",
          "games_count": 1781,
          "image_background":
              "https://media.rawg.io/media/games/3ca/3ca24180cb8d9780d45f394f685fd9d2.jpg"
        },
        {
          "id": 222,
          "name": "Choose Your Own Adventure",
          "slug": "choose-your-own-adventure",
          "language": "eng",
          "games_count": 2762,
          "image_background":
              "https://media.rawg.io/media/games/b28/b28a135fa6133e17b228f46902a4fda4.jpg"
        },
        {
          "id": 288,
          "name": "Interactive Fiction",
          "slug": "interactive-fiction",
          "language": "eng",
          "games_count": 2607,
          "image_background":
              "https://media.rawg.io/media/games/cd0/cd074f3f6045297cda9ad077273c09b6.jpg"
        },
        {
          "id": 42513,
          "name": "Триллер",
          "slug": "triller",
          "language": "rus",
          "games_count": 1220,
          "image_background":
              "https://media.rawg.io/media/games/07a/07a74470a2618fd71945db0619602baf.jpg"
        },
        {
          "id": 42655,
          "name": "Психологическая",
          "slug": "psikhologicheskaia",
          "language": "rus",
          "games_count": 1257,
          "image_background":
              "https://media.rawg.io/media/games/c89/c89ca70716080733d03724277df2c6c7.jpg"
        },
        {
          "id": 285,
          "name": "Psychological",
          "slug": "psychological",
          "language": "eng",
          "games_count": 1355,
          "image_background":
              "https://media.rawg.io/media/games/e06/e062facadfeb0a0339103bf7e81ca129.jpg"
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
          "id": 326,
          "name": "Investigation",
          "slug": "investigation",
          "language": "eng",
          "games_count": 2060,
          "image_background":
              "https://media.rawg.io/media/games/540/54027b1cc2caa3b5a1426cde0d6f60e9.jpg"
        },
        {
          "id": 66535,
          "name": "Интерактивная литература",
          "slug": "interaktivnaia-literatura",
          "language": "rus",
          "games_count": 1907,
          "image_background":
              "https://media.rawg.io/media/games/f1d/f1d25c007b9b45c98b57ff9ebbca9692.jpg"
        },
        {
          "id": 42646,
          "name": "Беседы",
          "slug": "besedy",
          "language": "rus",
          "games_count": 1391,
          "image_background":
              "https://media.rawg.io/media/screenshots/d9e/d9e5b749589cc80daffba66f25d6d4ab.jpg"
        },
        {
          "id": 342,
          "name": "Conversation",
          "slug": "conversation",
          "language": "eng",
          "games_count": 1729,
          "image_background":
              "https://media.rawg.io/media/screenshots/8d2/8d223357b0c68bb17af037b791e107df.jpg"
        },
        {
          "id": 59333,
          "name": "Повествовательная",
          "slug": "povestvovatelnaia",
          "language": "rus",
          "games_count": 1336,
          "image_background":
              "https://media.rawg.io/media/games/e62/e62cfc3fd878432ece1e1c9d4417a6b6.jpg"
        },
        {
          "id": 66540,
          "name": "Выбери себе приключение",
          "slug": "vyberi-sebe-prikliuchenie",
          "language": "rus",
          "games_count": 2058,
          "image_background":
              "https://media.rawg.io/media/games/61e/61ec0844a59c04cb0b2d2545e464e026.jpg"
        },
        {
          "id": 66534,
          "name": "Расследования",
          "slug": "rassledovaniia",
          "language": "rus",
          "games_count": 1161,
          "image_background":
              "https://media.rawg.io/media/games/f1d/f1d25c007b9b45c98b57ff9ebbca9692.jpg"
        }
      ],
      "esrb_rating": null,
      "user_game": null,
      "reviews_count": 25,
      "saturated_color": "0f0f0f",
      "dominant_color": "0f0f0f",
      "short_screenshots": [
        {
          "id": -1,
          "image":
              "https://media.rawg.io/media/games/074/074e642bdfa4a6b774977a2222dfd4ea.jpg"
        },
        {
          "id": 2897217,
          "image":
              "https://media.rawg.io/media/screenshots/af6/af612c4f569dfc5c59752eed7d0728b1.jpg"
        },
        {
          "id": 2897218,
          "image":
              "https://media.rawg.io/media/screenshots/122/122ace6eb291cbeb864778d33980aa54.jpg"
        },
        {
          "id": 2897219,
          "image":
              "https://media.rawg.io/media/screenshots/f66/f66e1bd94d9b622412c43a9653fb7f77.jpg"
        },
        {
          "id": 2897220,
          "image":
              "https://media.rawg.io/media/screenshots/89a/89ad60c0c437109bf78a0fa34b94c3c6.jpg"
        }
      ],
      "parent_platforms": [
        {
          "platform": {"id": 1, "name": "PC", "slug": "pc"}
        },
        {
          "platform": {"id": 2, "name": "PlayStation", "slug": "playstation"}
        },
        {
          "platform": {"id": 3, "name": "Xbox", "slug": "xbox"}
        },
        {
          "platform": {"id": 7, "name": "Nintendo", "slug": "nintendo"}
        }
      ],
      "genres": [
        {"id": 3, "name": "Adventure", "slug": "adventure"}
      ]
    }),
  ];
  final gameResponse = GamesResponse(
      count: 239,
      next:
          "https://api.rawg.io/api/games?dates=2020-12-21%2C2021-12-21&key=02ef6ba5d13444ee86bad607e8bce3f4&ordering=-released&page=2&page_size=2&platforms=187",
      previous: null,
      results: listGames,
      user_platforms: false);

  test('should return valid model from json', () {
    /// arrange
    final jsonMap = json.decode(jsonReader(successGamePath));

    /// act
    final result = GamesResponse.fromJson(jsonMap as Map<String, dynamic>);

    /// assert
    expect(result, equals(gameResponse));
  });

  test('should return a valid json map containing proper data', () {
    /// act
    final result = gameResponse.toJson();
    final arrayResultJson = ([
      {
        "name": "Five Nights at Freddy's: Security Breach",
        "released": "2021-12-16",
        "background_image":
            "https://media.rawg.io/media/games/f5b/f5b0a8232e747c03aa6b56ce2d2af49a.jpg",
        "metacritic": 64,
      },
      {
        "name": "Alfred Hitchcock – Vertigo",
        "released": "2021-12-16",
        "background_image":
            "https://media.rawg.io/media/games/074/074e642bdfa4a6b774977a2222dfd4ea.jpg",
        "metacritic": null,
      }
    ]).map((e) => Game.fromJson(e)).toList();


    /// arrange
    final exceptedJson = {
      "count": 239,
      "next":
          "https://api.rawg.io/api/games?dates=2020-12-21%2C2021-12-21&key=02ef6ba5d13444ee86bad607e8bce3f4&ordering=-released&page=2&page_size=2&platforms=187",
      "previous": null,
      "results": arrayResultJson,
      "user_platforms": false,
    };

    /// assert
    expect(result, equals(exceptedJson));
  });
}
