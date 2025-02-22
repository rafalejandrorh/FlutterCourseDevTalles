import 'package:flutter/material.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/infrastructure/datasources/local_video_datasource_impl.dart';
// import 'package:toktik/domain/repositories/video_posts_repository,dart';
// import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    final VideoPostRepository = VideoPostsRepositoryImpl(
      videoDatasource: LocalVideoDatasourceImpl()
    );
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          // lazy: false,
          create: (_) => DiscoverProvider(videoRepository: VideoPostRepository)..loadNextPage()
        )
      ],
      child: MaterialApp(
        title: 'TokTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).theme(),
        home: const DiscoverScreen()
      ),
    );
  }

}