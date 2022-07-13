var app = angular.module('myapp', ['angularUtils.directives.dirPagination']);
app.config(['$locationProvider', function($locationProvider){ 
    $locationProvider.html5Mode({
       enabled: true,
       requireBase: false
   });    
}]);
app.controller('mycontroller', function($scope, $http,$location) {
    var id_new = $location.url().split('=')[1]; 
    console.log(id_new);
    $http({
        Method: "GET",
        url: "http://127.0.0.1:8000/api/tintucs/"+id_new,
    }).success(function(response) {
        console.log(response);
        $scope.tintuc = response;
    });
})