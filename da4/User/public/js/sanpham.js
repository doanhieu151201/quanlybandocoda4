var app = angular.module('myapp', ['angularUtils.directives.dirPagination']);

app.controller('mycontroller', function($scope, $http,$location) {
    
    $http({
        Method: "GET",
        url: "http://127.0.0.1:8000/api/sanphams"
    }).success(function(response) {
        console.log(response);
        $scope.sanphams = response;
    });
    $http({
        Method: "GET",
        url: "http://127.0.0.1:8000/api/loaisps"
    }).success(function(response) {
        console.log(response);
        $scope.loaisps = response;
    });
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
    $scope.pageSize = 6;



    
    $scope.addToCart = function (sp) {
        let item = {};
        item.id = sp.id;
        
        item.name = sp.name;
        item.image = sp.image;
        item.unit_price = sp.unit_price;
        item.so_luong = 1;
        var list;
        if (localStorage.getItem('cart') == null) {
            list = [item];
        } else {
            list = JSON.parse(localStorage.getItem('cart')) || [];
            let ok = true;
            for (let x of list) {
                if (x.id == item.id) {
                    x.so_luong += 1;
                    ok = false;
                    break;
                }
            }
            if (ok) {
                list.push(item);
            }
        }
        localStorage.setItem('cart', JSON.stringify(list));
        alert("Đã thêm giỏ hàng thành công");
    }

  
})