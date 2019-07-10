# TogglClient [![Build Status][travis_badge]][travis_url] [![Coverage Status][coveralls_badge]][coveralls_url]
Created by SWT19 - Group 16

A Squeak Client for the [Toggl Webapp](https://www.toggl.com). The documentation for the used API can be found [here](https://github.com/toggl/toggl_api_docs).

## Installation

There are two main ways to install the Toggl Client in your Squeak Image. The Client is tested and known to work on Squeak 5.2 and 5.1. 


#### Installation with .SAR

This installation is as easy as it gets. Simply go to ```Releases``` in this repository in the upper navigation bar of this site. From there download the .sar file from the latest release and drag the downloaded file in your Squeak image. If you have the JSON package already loaded in your image choose ```TogglClient.sar```, otherwise ```TogglClientWithJSON.sar```.In the opened dialog choose ```Install SAR```. After that you can start using Toggl.

#### Installation using Github

For this installation you need a git client in Squeak. We recommend the Squeak Object Tracker. You can find the installation instruction for Squot [here](https://github.com/hpi-swa/Squot).  

When you've finished the installation for Squot, go on Apps and open the "Git Browser". You should be asked if you want to add a project. Press no. After this right-click on "-- Projects --" and press "clone project". There fill in our github url (https://github.com/hpi-swa/Squot.git) and give the project a name (e.g. Toggl-Client). Then you must choose a directory for the repository. You can create a new directory or choose a existing one. After you finished the setup you should see our github repository in Squot. Our working version is always on the master branch, so you should be able to pull the master branch and start using Toggl. 


## Usage

#### Open Toggl Client
You can open the Toggl Client by choosing the app "Toggl Client" in the Apps dropdown. With this tool, you can track your working time in Squeak and synchronize your trackings with your Toggl Account.


#### Add an time entry

You can use our tool without being logged in. Simply press the start button in the corner and the timer will start. You can now give your time entry a description. After you finished your task simply press stop and the timer will end. You can now see your time entry with the description, duration, start and end time down below. If you didn't provide a description, "no description" will be displayed.

#### Login / Logout with your Toggl account

You can not only track your time offline, but also link your trackings to your online Toggl account. To do so, you have to first login and provide your account information. You can achieve this, by clicking on the "Login" button in the lower button bar. A dialog window where you can type in your account information will open. If you defined a default client before, your account informations will be prefilled there. After you clicked on "Save and Close", a session API token is created and you can click i.e. on "Synchronize". Any time entries you have created before the login are linked to the account you used to login. 
After a successful login, the label on the button changes to "Logout". You can click it to logout. Thereafter the overview pane is cleared. Be careful, if you logout and have not synchronised your time entries to the server, the time entries are lost. 
After your logout, you can click again on "Login" to login again.

#### Setup your default client

To minimize the times you have to type in your account info, you can set up a default account info, which is prefilled whenever you want to login. To do so, open the context menu by right-clicking on the time entry overview (the main pane). There you can choose the entry "change default user". Afterwards type in your account info in the following dialog.

#### Synchronize your trackings

When you are logged in with your Toggl account, you can synchronize your local time entries with your account. To do so, press synchronize. Now you should see all your time entries of the last 9 days correct displayed in your client. Also, you should see on any other Toggl application your time entries from Squeak. 

#### Rename / Restart a time entry

If you want to give a time entry a new name, you can open the context menu by right clicking on the time entry list and press rename. There should be an input field where you can fill in the new name. Press accept and the time entry is now renamed and automaticly synchronized.

If you want to start a new time entry with the same description as one before, you can open the context menu by right clicking on the time entry list and press restart. The description is filled in in the description field and the timer starts. 

## Known issues and bug

#### Can't rename when not logged in

#### When you have a running time entry, press synchronize and then press stop, the time entry is shown twice

#### Can't use single special characters

#### Time entries with 0 seconds duration are displayed without duration, start and end time after synchronize

## Development
### Testing


<!-- References -->
[travis_badge]: https://travis-ci.org/hpi-swa-teaching/TogglClient.svg?branch=master
[travis_url]: https://travis-ci.org/hpi-swa-teaching/TogglClient
[coveralls_badge]: https://coveralls.io/repos/github/hpi-swa-teaching/TogglClient/badge.svg?branch=master
[coveralls_url]: https://coveralls.io/github/hpi-swa-teaching/TogglClient?branch=master

