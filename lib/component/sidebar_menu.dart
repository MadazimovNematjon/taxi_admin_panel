//
// import 'package:flutter/material.dart';
// import 'package:sidebar_bigeagle/sidebar_bigeagle.dart';
//
//
//
//
// class SidebarMenu extends StatefulWidget {
//   int selectedIndex;
//    SidebarMenu({super.key,this.selectedIndex=0});
//
//   @override
//   State<SidebarMenu> createState() => _SidebarMenuState();
// }
//
// class _SidebarMenuState extends State<SidebarMenu> {
//
//   @override
//   Widget build(BuildContext context) {
//     return SideBar(
//         color: const Color(0xFF101010),
//         appColor: Colors.green, // Optional, white is default
//         accentColor: Colors.red, // Optional, white is default
//         onHoverScale: 1.2, // Recomended value: 1.2, min: 0.5 max: 2
//         borderRadius: 35.0, // Optional, 35.0 is default
//         elevation: 6.0, // Optional, 0.0 is default
//         logo: Image.asset('assets/images/logo.png'),
//         // If you don't especify a logo, an empty container is used
//         children: [
//           // Button list
//           SideBarButtonFlat(title: "Dashboard", icon: Icons.dashboard,),
//           SideBarButtonFlat(title: "Inventory", icon: Icons.view_list),
//           SideBarButtonFlat(title: "Search", icon: Icons.search),
//           SideBarButtonFlat(
//               title: "Online orders", icon: Icons.receipt),
//           SideBarButtonFlat(
//               title: "Codes", icon: Icons.qr_code_scanner),
//           SideBarButtonFlat(title: "Settings", icon: Icons.settings),
//           SideBarButtonFlat(title: "About", icon: Icons.info),
//         ],
//         onChange: (value) {
//           // This is the callback that is called when a button is pressed
//           setState(() {
//             widget.selectedIndex = value;
//           });
//         });
//   }
// }