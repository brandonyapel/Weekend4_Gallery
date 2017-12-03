var myApp = angular.module('myApp', []);

myApp.controller('GalleryController', ['$http', function ($http) {
    console.log('GalleryController is running');
    var self = this;
    self.playlist = {};


    self.getPlaylist = function () {
        $http({
            method: 'GET',
            url: 'https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=50&playlistId=PLygLngAcmBNyNbi8LuyNHMCu5qGIndYW9&key=AIzaSyCXPOWnyGPZRMW3Pz2NrjNa50tVSOj1uz8'
        }).then(function (response) {
            console.log('response', response)
            self.playlist = response
        })
    };

    self.getPlaylist();

 
}]);
