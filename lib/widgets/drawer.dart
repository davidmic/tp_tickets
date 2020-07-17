import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  Widget buildChildren ({IconData icon, String text, String subtext, bool addtionalText = false, Function onTap}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, top: 10, left: 20),
      child: InkWell(
        onTap: onTap ?? (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(icon, color: Colors.grey, size: 25,),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(text, style: TextStyle(fontSize: 16),),
                addtionalText ?
                Text(subtext, style: TextStyle(color: Colors.blue),) : Container(),
              ],
            ),

          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
         Padding(
           padding: const EdgeInsets.only(left: 15, bottom: 10, ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Text('Galaxy Store', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
               IconButton(
                  onPressed: (){},
                 icon: Icon(Icons.settings),
                 iconSize: 25,
                 color: Colors.grey,
               ),
             ],
           ),
         ),
          Divider(
            thickness: 1,
            indent: 1,
            endIndent: 1,
          ),
          buildChildren(
            icon: Icons.apps,
            text: 'My Apps',
          ),
          buildChildren(
            icon: Icons.update,
            text: 'Updates',
            addtionalText: true,
            subtext: '1 available'
          ),
          buildChildren(
            icon: Icons.file_download,
            text: 'Downloading',
            addtionalText: true,
            subtext: 'none',
          ),
          buildChildren(
            icon: Icons.bookmark,
            text: 'Wish list',
          ),
          Divider(),
          buildChildren(
            icon: Icons.bookmark,
            text: 'Coupons and gift cards'
          ),
          buildChildren(
              icon: Icons.notifications,
              text: 'Deals and Events'
          ),
          Divider(),
          buildChildren(
              icon: Icons.receipt,
              text: 'Receipts'
          ),
          buildChildren(
              icon: Icons.credit_card,
              text: 'Credit card',
          ),
          Divider(),
          buildChildren(
              icon: Icons.notifications_active,
              text: 'Notice'
          ),

        ],
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {

  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  Widget buildChildren ({IconData icon, String text, String subtext, bool addtionalText = false, Function onTap}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, top: 10, left: 20),
      child: InkWell(
        onTap: onTap ?? (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(icon, color: Colors.white, size: 25,),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(text, style: TextStyle(fontSize: 16,color: Colors.white),),
                addtionalText ?
                Text(subtext, style: TextStyle(color: Colors.blue),) : Container(),
              ],
            ),

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(
        color:  Color(0xffe46b10),//Color(0xffb76e79),
        borderRadius: BorderRadius.only(
          // topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        )
      ),
      width: mediaQuery.size.width * 0.85,
      height: mediaQuery.size.height,
      child: ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: <Widget>[
          SizedBox(height: mediaQuery.size.height * 0.03,),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 10, ),
            child: Container(
//              color: Color(0xffb76e79),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.2,),
                  CircleAvatar(
                    radius: 70,
//                    radius: 70,
                    backgroundColor: Colors.white,
                  ),
//                  Text('Galaxy Store', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.settings, color: Colors.white,),
                    iconSize: 25,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1,
            indent: 1,
            endIndent: 1,
          ),
          buildChildren(
            icon: Icons.apps,
            text: 'My Apps',
          ),
          buildChildren(
              icon: Icons.update,
              text: 'Updates',
              addtionalText: true,
              subtext: '1 available'
          ),
          buildChildren(
            icon: Icons.file_download,
            text: 'Downloading',
            addtionalText: true,
            subtext: 'none',
          ),
          buildChildren(
            icon: Icons.bookmark,
            text: 'Wish list',
          ),
//          Divider(),
          buildChildren(
              icon: Icons.bookmark,
              text: 'Coupons and gift cards'
          ),
          buildChildren(
              icon: Icons.notifications,
              text: 'Deals and Events'
          ),
          Divider(),
          buildChildren(
              icon: Icons.receipt,
              text: 'Receipts'
          ),
          buildChildren(
            icon: Icons.credit_card,
            text: 'Credit card',
          ),
//          Divider(),
          buildChildren(
              icon: Icons.notifications_active,
              text: 'Notice'
          ),

        ],
      ),
    );
  }
}