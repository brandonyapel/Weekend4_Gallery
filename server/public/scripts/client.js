var myApp = angular.module('myApp', []);

myApp.controller('GalleryController', ['$http', function ($http) {
    console.log('GalleryController is running');
    var self = this;
    self.playlist = {};
    self.youtubeArray = [];
    self.dataArray = [];
    self.galleryObject = {};
    self.repeatData = ''

    self.getPlaylistSiteData = function () {
        $http({
            method: 'GET',
            url: '/videos'
        }).then(function (response) {
            console.log('response', response)
            self.dataArray = response.data;
            console.log(self.dataArray);

        })
    };
    self.getPlaylistSiteData();

    self.getPlaylist = function () {
        $http({
            method: 'GET',
            url: 'https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=50&playlistId=PLygLngAcmBNyNbi8LuyNHMCu5qGIndYW9&key=AIzaSyCXPOWnyGPZRMW3Pz2NrjNa50tVSOj1uz8'
        }).then(function (response) {
            console.log('response', response)
            self.playlist = response;
            self.youtubeArray = self.playlist.data.items;
            self.repeatData = self.dataArray.map(function(value, index) {
                return {
                    localData: value,
                    youtubeData: self.youtubeArray[index]
                }
            });
            console.log(self.repeatData);
        })
    };
    self.getPlaylist();

    self.addLike = function (id) {
        console.log('addLike')
        console.log(self.repeatData[id-1].localData.likes)
        self.repeatData[id-1].localData.likes +=1
        console.log({likes: self.repeatData[id-1].localData.likes})
        $http({
            method: 'PUT',
            url: '/videos/like/'+id,
            data: {likes: self.repeatData[id-1].localData.likes}
        }).then(function (response) {
            console.log('response', response)
            
    })
}
 
}]);
