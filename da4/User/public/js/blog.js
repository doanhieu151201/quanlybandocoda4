var app = angular.module('myapp', ['angularUtils.directives.dirPagination']);

app.controller('mycontroller', function($scope, $http,$location) {
    $http({
        Method: "GET",
        url: "http://127.0.0.1:8000/api/tintucs"
    }).success(function(response) {
        console.log(response);
        $scope.tintucs = response;
    });
    $scope.currentPage = 1;
    $scope.pageChangeHandler = function(num) {
            $scope.currentPage = num;
        };
    $scope.pageSize = 3;
})