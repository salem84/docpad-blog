---
layout: post
title: Study Notes for 70-484 Exam: Essentials of Developing Windows Metro style Apps using C#
date: 2012-08-21
tags: ["certificazioni","General Topics","Programmazione"]
---

<span style="color: black; font-size: 14pt; font-style: italic; font-weight: bold; line-height: 1.7em;">Design Metro style Apps (19%)</span>

Design the UI layout and structure.

This objective may include but is not limited to: evaluate the conceptual design and decide how the UI will be composed; design for the inheritance and re-use of visual elements (e.g., styles, resources); design for accessibility; decide when custom controls are needed

[MSDN: Design guidance for Metro style apps](http://msdn.microsoft.com/en-us/library/windows/apps/hh770552.aspx)

Design for separation of concerns.

This objective may include but is not limited to: plan the logical layers of your solution to meet application requirements; design loosely coupled layers; incorporate WinMD components

<span style="color: black; font-size: 11pt; font-style: italic; line-height: 1.7em;">Apply the MVVM pattern to your app design.</span>

This objective may include but is not limited to: design and implement the appropriate data model to support business entities; design your viewmodel to support your view based on your model; develop a view to meet data-binding requirements; create view models using INotifyPropertyChanged, ObservableCollection, and CollectionViewSource

Design and implement Process Lifetime Management (PLM).

This objective may include but is not limited to: choose a state management strategy; handle the suspend event; prepare for app termination; handle the Resume event; handle the OnActivated event; check the ActivationKind and previous state

[MSDN: Application lifecycle](http://msdn.microsoft.com/en-US/library/windows/apps/hh464925)

[MSDN: Launching resuming and multitasking](http://msdn.microsoft.com/en-US/library/windows/apps/xaml/Hh770837)

[MSDN: How to activate an app](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/Hh465093.aspx)

<!-- more -->

[MSDN: How to suspend an app](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/Hh465115.aspx)

[MSDN: How to resume an app](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/hh465110.aspx)

[MSDN: Guidelines for app suspend and resume](http://msdn.microsoft.com/en-US/library/windows/apps/hh465088)

&nbsp;

Plan for an application deployment.

This objective may include but is not limited to: plan a deployment based on Windows 8 Application certification requirements; prepare an app manifest (capabilities and declarations); sign an app; plan the requirements for an enterprise deployment

[MSDN: Packaging, deployment, and query of Metro style apps](http://msdn.microsoft.com/en-us/library/hh446593.aspx)

[MSDN: App packages and deployment (Metro style apps)](http://msdn.microsoft.com/en-us/library/hh464929.aspx)

[MSDN: Packaging your app using Visual Studio 2012](http://msdn.microsoft.com/en-US/library/windows/apps/hh454036)

[MSDN: Submitting your app](http://msdn.microsoft.com/en-us/library/windows/apps/br230835.aspx)

[MSDN: App submission checklist](http://msdn.microsoft.com/en-us/library/windows/apps/hh694062.aspx)

[MSDN: How to test your app with the Windows App Certification Kit](http://msdn.microsoft.com/en-us/library/windows/apps/hh694081.aspx)

[MSDN: App packager (MakeAppx.exe)](http://msdn.microsoft.com/en-us/library/windows/apps/hh446767.aspx)

[MSDN: Manifest Designer](http://msdn.microsoft.com/en-us/library/windows/apps/br230259(v=vs.110).aspx)

[MSDN: Signing a package](http://msdn.microsoft.com/en-us/library/windows/apps/br230260(v=vs.110).aspx)

[MSDN: Sharing an app package locally](http://msdn.microsoft.com/en-us/library/windows/apps/hh975356(v=vs.110).aspx)

[MSDN: Building the app package](http://msdn.microsoft.com/en-us/library/windows/apps/hh694075.aspx)

&nbsp;

Develop Metro style Apps by Using WinRT (19%)

Access and display contacts.

This objective may include but is not limited to: call the ContactsPicker class; filter which contacts to display; display a set number of contacts; create and modify contact information; select specific contact data

[MSDN: Windows.ApplicationModel.Contacts namespace](http://msdn.microsoft.com/en-us/library/windows/apps/windows.applicationmodel.contacts.aspx)

[MSDN: ContactPicker class](http://msdn.microsoft.com/en-us/library/windows/apps/windows.applicationmodel.contacts.contactpicker.aspx)

[MSDN Quickstart: Selecting user contacts](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/JJ152724(v=win.10).aspx)

Design for charms and contracts.

This objective may include but is not limited to: choose the appropriate charm based on app requirements; design your app in a charm- and contract-aware manner; configure app manifest for correct permissions

[MSDN: App contracts and extensions](http://msdn.microsoft.com/en-us/library/windows/apps/hh464906.aspx)

Implement search.

This objective may include but is not limited to: provide search suggestions using the SearchPane class; search for and launch other apps; provide and constrain search within an app, including inside and outside of Search charm; provide search result previews; implement activation from within search

[MSDN: Adding search to an app](http://msdn.microsoft.com/en-US/library/windows/apps/xaml/JJ130767(v=win.10))

[MSDN Quickstart: Adding search to an app](http://msdn.microsoft.com/en-US/library/windows/apps/xaml/Hh868180(v=win.10))

[MSDN: Guidelines and checklist for search](http://msdn.microsoft.com/en-us/library/windows/apps/hh465233.aspx)

[MSDN: SearchPane class](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/windows.applicationmodel.search.searchpane)

[Olivier Matis blog: Charm up your Metro app](http://www.guruumeditation.net/blog/charm-up-your-metro-app-part-ii)

[Soroush's Blog: How to implement search in a windows 8 metro style app](http://www.sormh.com/how-to-implement-search-in-windows-8-metro-style-app)

Implement Share in an app.

This objective may include but is not limited to: use the DataTransferManager class to share data with other apps; accept sharing requests by implementing activation from within Share; limit the scope of sharing using the DataPackage object; implement in-app Share outside of Share charm

[MSDN: Adding Share](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/hh871363.aspx)

[MSDN: Sharing content](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/hh871374.aspx)

[MSDN: Receiving shared content](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/hh871369.aspx)

[MSDN: Sharing and exchanging data](http://msdn.microsoft.com/en-US/library/windows/apps/xaml/Hh871373(v=win.10))

[MSDN: Choosing data formats for sharing](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/hh871364.aspx)

[MSDN: Guidelines for sharing content](http://msdn.microsoft.com/en-US/library/windows/apps/hh465251)

[MSDN: How to support pull operations](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/hh871375.aspx)

[MSDN: How to make asynchronous calls in your DataRequested handler](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/hh871365.aspx)

[Olivier Matis blog: Charm up your Metro app](http://www.guruumeditation.net/blog/charm-up-your-metro-app-part-iii)

[Jonath Anantoine' Blog: Windows 8 - the sharing contract](http://www.jonathanantoine.com/2011/09/18/windows-8-the-sharing-contract/)

Manage app settings and preferences.

This objective may include but is not limited to: choose which app features are accessed in AppSettings; add entry points for AppSettings in the Settings window; create settings flyouts using the Popup control; add settings to Popup; store and retrieve settings from the roaming app data store

[MSDN: Accessing app data with the Windows Runtime](http://msdn.microsoft.com/en-US/library/windows/apps/hh464917)

[MSDN: Managing application data](http://msdn.microsoft.com/en-US/library/windows/apps/xaml/Hh465099(v=win.10))

[MSDN Quickstart: Local application data](http://msdn.microsoft.com/en-US/library/windows/apps/xaml/hh700361)

[MSDN Quickstart: Roaming application data](http://msdn.microsoft.com/en-US/library/windows/apps/xaml/hh700362)

[MSDN Quickstart: Temporary application data](http://msdn.microsoft.com/en-US/library/windows/apps/xaml/hh700363)

[MSDN: Guidelines for app settings](http://msdn.microsoft.com/en-US/library/windows/apps/hh770544)

[MSDN Quickstart: Add app settings](http://msdn.microsoft.com/en-US/library/windows/apps/xaml/Hh872190(v=win.10))

[Going Metro: Integrating with Windows 8 Settings Charm](http://blogs.msdn.com/b/going_metro/archive/2012/04/22/integrating-with-windows-8-settings-charm.aspx)

Create the User Interface (21%)

Create layout aware apps to handle view states.

This objective may include but is not limited to: handle view state events from ViewStateManager; choose between style patterns for the different view states; set app orientation in the manifest

Implement layout controls.

This objective may include but is not limited to: implement the Grid control to structure your layout; set the number of rows/columns and size; enable zoom and scroll capabilities in layout controls; manage text flow and presentation

Design and implement the app bar.

This objective may include but is not limited to: determine what to put on the app bar based on app requirements; style and position app bar items; design the placement of controls on the app bar; handle AppBar events

Design and implement data presentation.

This objective may include but is not limited to: choose and implement data controls to meet app requirements (e.g., ListView, GridView, and FlipView); create data templates to meet app requirements

Create and manage XAML styles and templates.

This objective may include but is not limited to: implement and extend styles and templates; implement gradients; modify styles based on event and property triggers; create shared resources and themes

Program the User Interaction (21%)

Create and manage tiles.

This objective may include but is not limited to: create and update tiles and tile contents; create and update badges (TileUpdateManager class); respond to notification requests; choose an appropriate tile update schedule based on app requirements

[MSDN: Working with tiles, badges, and toast notifications](http://msdn.microsoft.com/en-US/library/windows/apps/xaml/Hh868259(v=win.10))

[MSDN: Creating tiles](http://msdn.microsoft.com/en-US/library/windows/apps/xaml/Hh868260(v=win.10))

[MSDN: Badge overview](http://msdn.microsoft.com/en-us/library/windows/apps/hh779719.aspx)

[MSDN: The badge image catalog](http://msdn.microsoft.com/en-us/library/windows/apps/hh761458.aspx)

[MSDN Quickstart: Sending a badge update](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/Hh868225(v=win.10).aspx)

[MSDN: Guidelines and checklist for tiles and badges](http://msdn.microsoft.com/en-us/library/windows/apps/hh465403.aspx)

[MSDN: Guidelines and checklist for badges](http://msdn.microsoft.com/en-us/library/windows/apps/hh761459.aspx)

[MSDN: Choosing a notification delivery method](http://msdn.microsoft.com/en-us/library/windows/apps/hh779721.aspx)

[MSDN: Periodic notification overview](http://msdn.microsoft.com/en-us/library/windows/apps/jj150587.aspx)

[MSDN: How to set up periodic notifications for tiles](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/Hh868228(v=win.10).aspx)

[MSDN: Guidelines and checklist for periodic notifications](http://msdn.microsoft.com/en-us/library/windows/apps/hh761461.aspx)

[MSDN: Push notification overview](http://msdn.microsoft.com/en-us/library/windows/apps/hh913756.aspx)

[Mikael Koskinen: WinRT - Example of Using Periodic Notifications for Live Tiles](http://mobile.dzone.com/articles/winrt-example-using-periodic)

Notify users by using toast.

This objective may include but is not limited to: enable an app for toast notifications; populate toast notifications with images and text using the ToastUpdateManager class; play sounds with toast notifications; respond to toast events; control toast duration

[MSDN: Toast notification overview](http://msdn.microsoft.com/en-us/library/windows/apps/hh779727.aspx)

[MSDN: How to opt in for toast notifications](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/Hh868218(v=win.10).aspx)

[MSDN Quickstart: Sending a toast notification](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/Hh868254(v=win.10).aspx)

[MSDN: Guidelines and checklist for toast notifications](http://msdn.microsoft.com/en-us/library/windows/apps/hh465391.aspx)

[MSDN: How to schedule a toast notification](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/Hh868224(v=win.10).aspx)

[MSDN: The toast template catalog](http://msdn.microsoft.com/en-us/library/windows/apps/hh761494.aspx)

[Eric Vogel: Using Push Notifications in Windows 8](http://visualstudiomagazine.com/articles/2012/03/25/using-push-notifications-in-windows-8.aspx)

Manage input devices.

This objective may include but is not limited to: capture Gesture library events; create custom gesture recognizers; listen to mouse events or touch gestures; manage Stylus input and inking

Design and implement navigation in an app.

This objective may include but is not limited to: handle navigation events, check navigation properties, and call navigation functions by using the Navigation framework; design navigation to meet app requirements; Semantic Zoom

Manage Security and Data (20%)

Choose an appropriate data access strategy.

This objective may include but is not limited to: choose the appropriate data access strategy (file based, web service, remote storage, including Windows Azure storage) based on requirements

Retrieve data remotely.

This objective may include but is not limited to: use HttpClient to retrieve web services; set the appropriate HTTP verb for REST; consume SOAP/WCF services; use WebSockets for bi-directional communication; handle the progress of data requests

Implement data binding.

This objective may include but is not limited to: choose and implement data-bound controls; bind collections to items controls; implement the IValueConverter interface; create and set dependency properties; validate user input; enable filtering, grouping, and sorting data in the user interface

Manage Windows Authentication.

This objective may include but is not limited to: retrieve a user's roles or claims; store and retrieve credentials by using the PasswordVault class; implement the CredentialPicker class

Manage Web Authentication.

This objective may include but is not limited to: use the Windows.Security.Authentication.Web namespace; set up oAuth2 for authentication; implement the CredentialPicker class; set up single sign-on (SSO); implement credential roaming; implement the WebAuthenticationBroker class

[MSDN: Setting up single sign-on](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/Hh465283(v=win.10).aspx)

[MSDN: How to set up single sign-on for developers](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/hh465275.aspx)

[MSDN: How to set up single sign-on for online providers](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/hh465279.aspx)

[MSDN: Guidelines for single sign-on and connected accounts](http://msdn.microsoft.com/en-us/library/windows/apps/xaml/jj203553.aspx)

[MSDN: Windows.Security.Authentication.Web namespace](http://msdn.microsoft.com/en-us/library/windows/apps/windows.security.authentication.web)

[MSDN: WebAuthenticationBroker class](http://msdn.microsoft.com/en-us/library/windows/apps/BR227025)

[Bill Sempf's Blog: How to login to Facebook from Windows 8 Metro (in HTML5)](http://www.sempf.net/post/How-to-login-to-Facebook-from-Windows-8-Metro-using-HTML-5.aspx)

[World Wide Code - Shubhan Chemburkar's Blog: Windows 8 - Web authentication in Metro apps (in HTML5)](http://worldwidecode.wordpress.com/2011/10/01/windows-8-web-authentication-in-metro-apps/)