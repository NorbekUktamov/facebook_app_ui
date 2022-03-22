
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text("facebook",style:TextStyle(color: Colors.blueAccent,fontSize: 25,fontWeight: FontWeight.bold) ,),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search),
              color: Colors.grey.shade400,
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey.shade400,
          ),
        ],
      ),
      body:ListView(
        children: [
          //post create
          Container(
           padding: EdgeInsets.only(top: 10,left: 10,right: 10),
            height: 120.0,
            color: Colors.black,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //foto circle
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/user_1.jpeg"),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                          child: Container(
                            height: 45,
                            padding: EdgeInsets.only(left: 15,right: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              border: Border.all(width: 1,color: Colors.grey.shade500),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "What's on your mind?",
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.grey.shade600),
                              ),
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                   children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.video_call,color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Live",style: TextStyle(color: Colors.grey.shade400),),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14,bottom: 14),
                        width: 1,
                        color: Colors.grey.shade400,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.photo,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Photo",style: TextStyle(color: Colors.grey.shade400),),
                          ],
                        ),
                      ),
                      Container(
                       margin: EdgeInsets.only(top: 14,bottom: 14),
                       width: 1,
                       color: Colors.grey.shade300,
                     ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on,color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Check in",style: TextStyle(color: Colors.grey.shade400),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8,child: Container(color: Colors.grey.shade600,),),
          //post stories
          Container(
            margin: EdgeInsets.only(top: 10,),
            padding: EdgeInsets.only(top: 10,bottom: 10),
            height: 200,
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10),
                makeStory('assets/images/story_5.jpeg', 'assets/images/user_5.jpeg', 'User 5'),
                makeStory('assets/images/story_4.jpeg', 'assets/images/user_4.jpeg', 'User 4'),
                makeStory('assets/images/story_3.jpeg', 'assets/images/user_3.jpeg', 'User 3'),
                makeStory('assets/images/story_2.jpeg', 'assets/images/user_2.jpeg', 'User 2'),
                makeStory('assets/images/story_1.jpeg', 'assets/images/user_1.jpeg', 'User 1'),
              ],
            ),
          ),
          SizedBox(height: 8,child: Container(color: Colors.grey.shade600,),),

          //postfeeed
          makeFeed('User 1','assets/images/user_1.jpeg','1 hr ago','All the Lorem Ipsum generators on the Internet to repeat fined','assets/images/story_1.jpeg','assets/images/story_5.jpeg'),
          makeFeed('User 2','assets/images/user_2.jpeg','1 hr ago','All the Lorem Ipsum generators on the Internet to repeat fined','assets/images/story_2.jpeg','assets/images/story_4.jpeg'),
          makeFeed('User 3','assets/images/user_3.jpeg','1 hr ago','All the Lorem Ipsum generators on the Internet to repeat fined','assets/images/story_3.jpeg','assets/images/story_1.jpeg'),
        ],

      ) ,
    );
  }

  Widget makeStory(storyImage,userImage,userName){
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border:Border.all(color: Colors.blue,width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(userName,style: TextStyle(color: Colors.grey.shade400),),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed(userName,userImage,feedTime,feedText,feedImage1,feedImage2){
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                SizedBox(height: 7,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(userName,style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold,fontSize: 18,),),
                          SizedBox(height: 3,),
                          Text(feedTime,style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ],
                      ),

                    ],
                  ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,size: 30,color: Colors.grey.shade500,),),
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText,style: TextStyle(color: Colors.grey.shade500,fontSize: 15,height: 1.5,letterSpacing: .7),),
                SizedBox(height: 10,),
              ],
            ),
          ),

          //photo
          Container(
            height: 240,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(feedImage1),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),

                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(feedImage2),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),

                ),
              ],
            ),

          ),
          //likes
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children:[
                    makeLike(),
                    Transform.translate(
                      offset: Offset(-5,0),
                      child: makeLove(),
                    ),
                    SizedBox(width: 5,),
                    Text("2.5k",style: TextStyle(fontSize: 13,color: Colors.grey.shade500),)
                  ],
                ),
                Text("400 comments",style: TextStyle(fontSize: 13,color: Colors.grey.shade500),),
              ],
            ),
          ),
          SizedBox(height: 10,),
          //like comment,share
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive:true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          SizedBox(height: 5,),
          SizedBox(height: 5,child: Container(color: Colors.grey.shade700,),),
        ],
      ),
    );
  }


  Widget makeLike(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(Icons.thumb_up,size: 12,color: Colors.white,),
      ),
    );
  }

  Widget makeLove(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(Icons.favorite,size: 12,color: Colors.white,),
      ),
    );
  }

  Widget makeLikeButton({isActive}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up,color: isActive? Colors.blue : Colors.grey,size: 18,),
            SizedBox(width: 5,),
            Text("Like",style: TextStyle(color: isActive? Colors.blue : Colors.grey),),
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat,color: Colors.grey,size: 18,),
            SizedBox(width: 5,),
            Text("Comment",style: TextStyle(color: Colors.grey),),
          ],
        ),
      ),
    );
  }

  Widget makeShareButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share,color: Colors.grey,size: 18,),
            SizedBox(width: 5,),
            Text("Share",style: TextStyle(color: Colors.grey),),
          ],
        ),
      ),
    );
  }


}
