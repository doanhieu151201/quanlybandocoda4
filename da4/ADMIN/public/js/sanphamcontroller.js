var app = angular.module('myapp', ['angularUtils.directives.dirPagination']);
app.controller('mycontroller', function($scope, $http) {


    var api ='http://127.0.0.1:8000/api/sanphams/';
    $http({
        Method: "GET",
        url: "http://127.0.0.1:8000/api/sanphams/"
    }).success(function(response) {
        console.log(response);
        $scope.sanphams = response;
    });

    $http({
        Method: "GET",
        url: "http://127.0.0.1:8000/api/lsps/"
    }).success(function(response) {
        console.log(response);
        $scope.lsps = response;
    });


    $http({
        Method: "GET",
        url: "http://127.0.0.1:8000/api/Nhaccs/"
    }).success(function(response) {
        console.log(response);
        $scope.nccs = response;
    });
    
    $scope.editClick = function(id) {
        $scope.id = id;
        if (id == 0) {
            $scope.modalTitle = "Them moi ban tin";
            // $scope.khach._token = CSRF_TOKEN;
            if($scope.sanpham){
                delete $scope.sanpham;
            }
        } else {
            $http({
                Method: "GET",
                url: "http://127.0.0.1:8000/api/sanphams/" + id
            }).success(function(response) {
                $scope.sanpham = response;
                CKEDITOR.instances.mota_sp.insertHtml($scope.sanpham.mota_sp);

            });
            $scope.modalTitle = "Sua ban tin";
        }
        $('#modelId').modal('show');
    }
    $scope.currentPage = 1;
    $scope.pageChangeHandler = function(num) {
            $scope.currentPage = num;
        };
    $scope.pageSize = 5;
    
    $scope.updateData = function() {
        var m = $scope.id == 0?"POST":"PUT";
        var urll = $scope.id == 0?api:api+$scope.id;
         $scope.sanpham.mota_sp = CKEDITOR.instances.mota_sp.document.getBody().getText();
        $http({
            method: m,
            url: urll,
            data: $scope.sanpham,
            headers: { 'Content-Type': 'application/json' }
        }).success(function(response) {
            console.log(response);
            location.reload();
        });
    }
    $scope.deleteClick = function(id) {
        var xacnhan = confirm("Ban co muon xoa that khong?");
        if (xacnhan) {
        $http({
            method: "DELETE",
            url: "http://127.0.0.1:8000/api/sanphams/" +id,
            data: $scope.sanpham,
            headers: { 'Content-Type': 'application/json' }
        }).success(function(response) {
            console.log(response);
            location.reload();
        }); 
        alert("Ban vua chon xoa id=" + id);
    } else {
        alert("Ban da huy lenh xoa");
    }
    }

    const fileUpload = document.querySelector("#file-upload");
    fileUpload.addEventListener("change", (e) => {
        const files = e.target.files;
        document.getElementById('Anh').innerHTML = `<img src="/upload/gom/`+ files[0].name +`" alt="Ảnh" style="width:100%;height:100%">`;
        for(const file of files) {
            const {name, type, size, lastModified } = file;
            // Làm gì đó với các thông tin trên
            $scope.sanpham.image = file.name;
            document.getElementById('Anh').innerHTML = `<img src="/upload/gom/`+ file.name +`" alt="Ảnh" style="width:100%;height:100%">`;
        };
    });
});