import 'package:flutter/material.dart';

class UI2 extends StatefulWidget {
  const UI2({super.key});

  @override
  State<UI2> createState() => _UI2State();
}

class _UI2State extends State<UI2> with SingleTickerProviderStateMixin {
  final List<String> imageUrls = [
    'https://images.unsplash.com/photo-1725489890986-330621425633?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxNHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1725958171072-808f8b8bd313?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw3fHx8ZW58MHx8fHx8',
    'https://plus.unsplash.com/premium_photo-1724296697228-ae418d019540?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxOXx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1725714107655-114c53550c01?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyMHx8fGVufDB8fHx8fA%3D%3D',
    // Add more image URLs
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Initialize the TabController
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose of the TabController when the widget is removed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Wanda',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                      'https://imgs.search.brave.com/lu5Qr2afNGPu4ByrBboz1O0d1TwwcbTGuqKPdiInVvs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTMw/NTQ2MjczMi9waG90/by9oZWFkc2hvdC1z/dHVkaW8tcG9ydHJh/aXQtb2YtYS13b21h/bi1pbi1wcm9maWxl/LWxvb2tpbmctYXQt/dGhlLWNhbWVyYS5q/cGc_cz02MTJ4NjEy/Jnc9MCZrPTIwJmM9/VDBSLXBBbUpKcEVy/V2M4aEUwalNKbm1w/dFVGUTVNdnRQWDdO/UEpKbG45cz0',
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildStatColumn("150", "Posts"),
                        _buildStatColumn("5k", "Followers"),
                        _buildStatColumn("100", "Following"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Wanda",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Photographer",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: const Text(
                        'Following',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.grey[200],
                          context: context,
                          builder: (BuildContext context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  title: const Text('Follow'),
                                ),
                                ListTile(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  title: const Text('Unfollow'),
                                ),
                                ListTile(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  title: const Text('Mute'),
                                  trailing: const Icon(Icons.volume_off),
                                ),
                                ListTile(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  title: const Text('Favourite'),
                                  trailing: const Icon(Icons.star_border),
                                )
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 8), // Spacing between buttons
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[400],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Message',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1, color: Colors.grey),
            Container(
              height: 95, // Adjust the height as needed
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildHighlight('https://imgs.search.brave.com/PkO5RpPGZW5uyCYOyjukOXVIfLUcTUbfk5BcF3ZrgQk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA3LzA4LzQ3Lzc1/LzM2MF9GXzcwODQ3/NzUwOF9ETmt6Uklz/TkZnaWJnQ0o2S29U/Z0pqalJaTkpENG1i/NC5qcGc', 'Nature'),
                  _buildHighlight('https://imgs.search.brave.com/AMDEKWobt565mEEo-0O9GS1S1aGFQ5uVIQjJs3CS4Sw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvNEZ0RVJV/TzZrWkVyRTQ0ZkZF/YVJYZi8yMDg3YWEw/Mzg2ZTA4N2MwMDI1/ODVmZGMzODMyNGYz/NC9Db2ZmZS1CcmVh/ay1UaHVtYm5haWwu/anBn', 'Me'),
                  _buildHighlight('https://imgs.search.brave.com/VBdin9S3vgkP9xTdn_rx4RgaWiNjq-KJcnbLzEzURkg/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvNTU5Nnoy/QkNSOUttVDFLZVJC/ck9RYS80MDcwZmQ0/ZTJmMWExM2Y3MWMy/YzQ2YWZlYjE4ZTQx/Yy9zaHV0dGVyc3Rv/Y2tfNDUxMDc3MDQz/LWhlcm8xLmpwZz9m/aXQ9ZmlsbCZ3PTYw/MCZoPTQwMA', 'Buildings'),
                ],
              ),
            ),
            const SizedBox(height: 8.0), // Space between highlights and TabBar
            TabBar(
              controller: _tabController, // Use the initialized TabController
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              tabs: const [
                Tab(icon: Icon(Icons.grid_on)), // Posts
                Tab(icon: Icon(Icons.video_library)), // Reels
                Tab(icon: Icon(Icons.person_outline)), // Tagged
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController, // Use the initialized TabController
                children: [
                  GridView.builder(
                    padding: const EdgeInsets.all(2.0),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                    ),
                    itemCount: imageUrls.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Stack(
                          children: [
                            // Display the image
                            Image.network(
                              imageUrls[index],
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const Center(child: Text('Reels', style: TextStyle(fontSize: 20))),
                  const Center(child: Text('Tagged', style: TextStyle(fontSize: 20))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildHighlight(String imageUrl, String label) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 27,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(height: 4.0),
          Text(label, style: const TextStyle(fontSize: 12, color: Colors.black)),
        ],
      ),
    );
  }
}
