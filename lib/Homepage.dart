import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrofitk/Reposetry/repo.dart';
import 'package:retrofitk/client/ApiClient.dart';
import 'package:retrofitk/data/LoginCubit/login_cubit.dart';
import 'package:retrofitk/data/LoginCubit/login_cubit.dart';
import 'package:retrofitk/model/imagemodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Repository? reposetry;
  var noVerifyCubit;

  @override
  void initState() {
    noVerifyCubit = context.read<LoginCubit>();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("dfd"),),
      body: Container(child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if(state is LoginLoadingState){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${state.Loading}")));
          }else if(state is LoginSucssesState){
            print("Login Api reposne #2295 ====>"+state.resposne.toString());
          }else if (state is LoginErrorState){
            print("Login Error====>"+state.error.toString());
          }
        },
        builder: (context, state) {
          return ElevatedButton(onPressed: () {
            print("press");
            noVerifyCubit.noVerify("9924226515",'school');
          }, child: Text("press"
              ""));
        },
      ),),);
  }

  ListView _buildPosts(BuildContext context, List<Slidermodel> posts) {
    return ListView.builder(
      itemCount: posts.length,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          child: ListTile(
            title: Text(
              posts[index].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(posts[index].email),
            leading: Column(
              children: <Widget>[
                Image.network(posts[index].picture, width: 50, height: 50,
                ),
              ],

            ),
          ),
        );
      },
    );
  }

  FutureBuilder<List<Slidermodel>?>? _buildBody(BuildContext context) {
    final client = ApiClient(Dio(BaseOptions(contentType: "application/json"),), baseUrl: '');
    return FutureBuilder<List<Slidermodel>>(

      future: client.getTasks(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final
          Slidermodel ?posts = snapshot.data as Slidermodel;
          return _buildPosts(context, posts as List<Slidermodel>);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
