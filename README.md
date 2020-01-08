# Developer Student Clubs App Template 


# Get Started

## 📸 ScreenShots

|             Light Theme              |              Dark Theme              |
| :----------------------------------: | :----------------------------------: |
| ![]() | ![]() |
| ![]() | ![]() |
| ![](ht) | ![]() |


## Overview

DSC Mobile Application is for all the DSC around the world.

## Technology Stack

- Flutter
- Firebase (Upcoming)

## Getting Started

1. [Fork repository](https://github.com/bugragoksu/dscmobiletemplate/fork) and clone your fork locally
1. Install [Flutter](https://flutter.dev/docs/get-started/install)
1. Install [Android Studio / IntelliJ / VSCode](https://flutter.dev/docs/development/tools/android-studio)
1. [Preparing Release for Android](https://flutter.dev/docs/deployment/android)

## Building the project



1.  Open [dscmobiletemplate-master\lib\src\config\settings.dart](https://github.com/bugragoksu/dscmobiletemplate/blob/master/lib/src/config/settings.dart) file and customise the texts according to your needs. Eg-

    ```
        static String chapterName = "DSC Mersin University";
        static String chapterEmail = "dscmersin@gmail.com";
        ...

        //About Page Texts
        static String becomeAMemberText = "Become a Member";
        static String becomeAMemberLink = "https://www.google.com";

         //BottomNavigationBar Texts
        static String homeText = "Home";
        static String eventText = "Events";
        static String teamText = "Team";
        static String contactText = "Contact";
    ```

1.  Open [dscmobiletemplate-master\lib\src\data\events.dart](https://github.com/bugragoksu/dscmobiletemplate/blob/master/lib/src/data/events.dart) file and customise the events according to your needs. Eg-

    ```
        List<Event> events = [
        Event(
            eventName: "Info Session",
            eventDescription:
                "Meet-ups where no technical content was covered in depth but instead you  built awareness of your DSC",
            eventVenue: "Woliva Coffee Co.",
            eventDate: "21-11-2019",
            registrationLink: "https://www.google.com",
            eventImage:
                "https://instagram.fada2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s640x640/75458014_550641802174303_6401784343888455679_n.jpg?_nc_ht=instagram.fada2-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=ilGyUdTBgDMAX9VB6C9&oh=19a1b4fe7dabc8de020ce36e0137f084&oe=5EAFE5B9"),
        Event(
            eventName: "Flutter Interact: Viewing Party",
            eventDescription:
            "Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Use this prezzo to host an introductory session on Flutter!",
            eventVenue: "Mersin University Young Entrepreneur Center",
            eventDate: "13-12-2019",
            registrationLink: "https://www.google.com",
            eventImage:
                "https://instagram.fada2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s640x640/75501173_155259832419826_2020011394690640895_n.jpg?_nc_ht=instagram.fada2-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=ovhHrDer714AX-skCON&oh=62ee71f76e90d2f97e39947dd34170aa&oe=5EA22C74"),
        ];
    ```

1.  Open [dscmobiletemplate-master\lib\src\data\teams.dart](https://github.com/bugragoksu/dscmobiletemplate/blob/master/lib/src/data/teams.dart) file and customise the team members according to your needs. Eg-

    ```
        List<User> coreTeam = [
            User(
                name: "Buğra Göksu",
                designation: "Lead",
                twitterUrl: "https://twitter.com/bugragoksu",
                linkedinUrl: "https://www.linkedin.com/in/bugragoksu/",
                githubUrl: "https://github.com/bugragoksu/",
                imageUrl:
                    "https://instagram.fada2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s640x640/57190462_2092747704168163_2995100425389045627_n.jpg?_nc_ht=instagram.fada2-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=bdS-ecNolEQAX8VEFAt&oh=ed2ae91fbed266129b279541f134654b&oe=5EAC77B5"),
        ]
    ```


1.  Open [dscmobiletemplate-master\lib\src\data\technologies.dart](https://github.com/bugragoksu/dscmobiletemplate/blob/master/lib/src/data/technologies.dart) file and customise the technologies according to your needs. Eg-

    ```
       List<Technology> technologies = [
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
    ```

1.  Open [dscmobiletemplate-master\lib\src\config\assets.dart](https://github.com/iampawan/GDG-DevFest-App/blob/master/lib/sponsors/sponsor_page.dart) file and customise assets file data according to your needs. Eg-

    ```
        static const facebook = 'assets/social/facebook.png';
        static const twitter = 'assets/social/twitter.png';
        
    ```

## Contributors

**Maintainer:** [Buğra Göksu](https://github.com/bugragoksu)

## License

Project is published under the [MIT license](/LICENSE.md).
Feel free to clone and modify repo as you want, but don't forget to add reference to authors

_DSC App Template is not endorsed and/or supported by Google, the corporation._
