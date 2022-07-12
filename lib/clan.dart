import 'package:flutter/material.dart';

class ClanPage extends StatefulWidget {
  const ClanPage({Key? key}) : super(key: key);

  @override
  State<ClanPage> createState() => _ClanPageState();
}

class _ClanPageState extends State<ClanPage> {
  SizedBox verticalSpace = const SizedBox(height: 10);
  Divider divider = const Divider(
    thickness: 3,
    color: Colors.white,
    indent: 10,
    endIndent: 10,
  );
  Column clanDiscussions(String threadName, String noOfMessages) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          threadName,
          style: const TextStyle(color: Colors.red, fontSize: 20),
        ),
        Text(
          noOfMessages,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }

  Row clanMember(String url, String value) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          child: Image(
            image: NetworkImage(url),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(color: Colors.red, fontSize: 20),
          ),
        )
      ],
    );
  }

  Container liveClanAct(String url, String text) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(url)),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }

  Center seemore() {
    return const Center(
      child: Text(
        'see more',
        style: TextStyle(color: Colors.yellow, fontSize: 15),
      ),
    );
  }

  Row achievementsRow(String subHeading, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          subHeading,
          style: const TextStyle(color: Colors.redAccent, fontSize: 20),
        ),
        Text(
          value,
          style: const TextStyle(color: Colors.yellowAccent, fontSize: 30),
        )
      ],
    );
  }

  Row pastFeaturePerf(String url, String heading) {
    return Row(
      children: [
        Image(
          fit: BoxFit.cover,
          height: 100,
          width: 100,
          image: NetworkImage(url),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Text(
            heading,
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
        ),
      ],
    );
  }

  Text heading(String value) {
    return Text(
      value,
      style: const TextStyle(color: Colors.yellow, fontSize: 25),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          decoration: const BoxDecoration(color: Colors.black),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.fromBorderSide(BorderSide.lerp(
                        const BorderSide(width: 5, color: Colors.yellow),
                        const BorderSide(width: 5, color: Colors.yellow),
                        0.1)),
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: const Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://qph.cf2.quoracdn.net/main-qimg-70b7a200b6a8239229ccb25a6cbbebc6-lq',
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          height: 100,
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Clan Name: Lorem Ipsum',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w700),
                              ),
                              verticalSpace,
                              const Text(
                                '28 members, 5 online',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace,
                divider,
                verticalSpace,
                heading('Achievements'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Current league',
                        style:
                            TextStyle(color: Colors.redAccent, fontSize: 20)),
                    Image(
                        height: 120,
                        width: 120,
                        image: NetworkImage(
                            'https://static.wikia.nocookie.net/leagueoflegends/images/9/96/Season_2019_-_Gold_1.png/revision/latest/scale-to-width-down/250?cb=20181229234920'))
                  ],
                ),
                verticalSpace,
                achievementsRow('League Ranking', '11th'),
                verticalSpace,
                achievementsRow('Experience', '2000 xp'),
                verticalSpace,
                achievementsRow('# of wins', '3'),
                divider,
                verticalSpace,
                heading('Past featured performance'),
                verticalSpace,
                pastFeaturePerf(
                    'https://flxt.tmsimg.com/assets/p225665_i_v8_ab.jpg',
                    'Priya in international debating league'),
                verticalSpace,
                verticalSpace,
                pastFeaturePerf(
                    'https://flxt.tmsimg.com/assets/p225665_i_v8_ab.jpg',
                    'Priya in international debating league'),
                verticalSpace,
                seemore(),
                divider,
                verticalSpace,
                heading('Live clan activities on platform'),
                verticalSpace,
                liveClanAct(
                    'https://cdn.europosters.eu/image/750/art-photo/land-of-fog-i-i77569.jpg',
                    'Live tradding championship'),
                verticalSpace,
                liveClanAct(
                    'https://cdn.europosters.eu/image/750/art-photo/land-of-fog-i-i77569.jpg',
                    'Treasure hunt'),
                verticalSpace,
                seemore(),
                divider,
                verticalSpace,
                heading('Clan discussions'),
                verticalSpace,
                verticalSpace,
                clanDiscussions('General Thread:', '15 unread messages'),
                verticalSpace,
                verticalSpace,
                clanDiscussions('(live) Anyone enthu for trading league..',
                    '10 unread messages'),
                verticalSpace,
                verticalSpace,
                clanDiscussions('(live) Anyone enthu for trading league..',
                    '10 unread messages'),
                verticalSpace,
                verticalSpace,
                seemore(),
                verticalSpace,
                divider,
                verticalSpace,
                heading('Clan members'),
                verticalSpace,
                clanMember(
                    'https://w0.peakpx.com/wallpaper/670/410/HD-wallpaper-light-yagami-art-facial-expression-anime-deathnote-anime-deathnote-deathnote-l-kira-thumbnail.jpg',
                    'Lorem Ipsum - Clan head'),
                verticalSpace,
                clanMember(
                    'https://w0.peakpx.com/wallpaper/670/410/HD-wallpaper-light-yagami-art-facial-expression-anime-deathnote-anime-deathnote-deathnote-l-kira-thumbnail.jpg',
                    'Lorem Ipsum - Debating Sensei'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
