var app = angular.module('myapp',['angularUtils.directives.dirPagination']);
app.controller('mycontroller', function($scope, $http) {
    var api ='http://127.0.0.1:8000/api/news/';
    $http({
        Method: "GET",
        url: "http://127.0.0.1:8000/api/news"
    }).success(function(response) {
        console.log(response);
        $scope.news = response;
    });
    $scope.editClick = function(id) {
       
        $scope.id = id;
        if (id == 0) {
            $scope.modalTitle = "Them moi ban tin";
            // $scope.sanpham._token = CSRF_TOKEN;
            if($scope.new){
                delete $scope.new;
            }
        } else {
            $http({
                Method: "GET",
                url: "http://127.0.0.1:8000/api/news/" + id
            }).success(function(response) {
                $scope.new = response;
                CKEDITOR.instances.content.insertHtml($scope.new.content);
                
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
        $scope.new.content = CKEDITOR.instances.content.document.getBody().getText();

        $http({
            method: m,
            url: urll,
            data: $scope.new,
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
            url: "http://127.0.0.1:8000/api/news/" +id,
            data: $scope.new,
            headers: { 'Content-Type': 'application/json' }
        }).success(function(response) {
            console.log(response);
            
        }); 
        alert("Ban vua chon xoa id=" + id);
        location.reload();
    } else {
        alert("Ban da huy lenh xoa");
    }
    }
    const fileUpload = document.querySelector("#file-upload");
    fileUpload.addEventListener("change", (e) => {
        const files = e.target.files;
        document.getElementById('Anh').innerHTML = `<img src="/upload/tintuc/`+ files[0].name +`" alt="Ảnh" style="width:100%;height:100%">`;
        for(const file of files) {
            const {name, type, size, lastModified } = file;
            // Làm gì đó với các thông tin trên
            $scope.new.image = file.name;
            document.getElementById('Anh').innerHTML = `<img src="/upload/tintuc/`+ file.name +`" alt="Ảnh" style="width:100%;height:100%">`;
        };
    });
});