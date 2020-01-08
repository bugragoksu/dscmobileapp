import 'package:dscmobile/src/config/assets.dart';
import 'package:dscmobile/src/models/tech_model.dart';

class Technologies {
  static List<Technology> technologies = [
    Technology(
        technologyName: "Android Development",
        technologyDesc:
            "Every year Google developers release exciting new updates to the world's most popular operating system. We always have sessions to keep you updated and mastering the latest trends in modern Android development.",
        technologyImg: Assets.mobileTech),
    Technology(
        technologyName: "Web Development",
        technologyDesc:
            "Learn the core foundations of a delightful web experience both for the user and developer. Stay up to tabs with emerging and trending technologies. Get access to a guided, tutorial and hands-on coding experience.",
        technologyImg: Assets.webTech),
    Technology(
        technologyName: "Cloud Computing",
        technologyDesc:
            "For passionate developers who want to stay relevant in a cloud first world where businesses demand for agility and innovation and prompt rise of cloud-native applications to bridges gaps between data, insight, and action.",
        technologyImg: Assets.cloudTech),
  ];
}
