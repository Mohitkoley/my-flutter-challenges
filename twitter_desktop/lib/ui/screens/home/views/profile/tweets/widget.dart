import 'package:flutter/material.dart';
import 'package:twitter_desktop/ui/components/card.dart';
import 'package:twitter_desktop/ui/screens/home/views/tweets/list.dart';

class ProfileTweets extends StatefulWidget {
  @override
  _ProfileTweetsState createState() => _ProfileTweetsState();
}

class _ProfileTweetsState extends State<ProfileTweets>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                child: Text('Tweets & Retweets'),
              ),
              Tab(
                child: Text('Media'),
              ),
              Tab(
                child: Text('Likes'),
              ),
            ],
          ),
          SizedBox(
            child: TabBarView(
              controller: _tabController,
              children: [
                TweetsList(),
                TweetsList(),
                TweetsList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
