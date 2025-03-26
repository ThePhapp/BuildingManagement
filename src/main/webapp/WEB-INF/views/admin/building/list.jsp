<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Danh sách tòa nhà</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <!-- Ace Admin CSS (assumed path, adjust as needed) -->
    <link rel="stylesheet" href="/assets/css/ace.min.css">
    <style>
        body { font-family: 'Times New Roman', Times, serif; }
    </style>
</head>
<body>
<div class="main-content" id="main-container">
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Trang chủ</a>
                    </li>
                    <li class="active">Bảng điều khiển</li>
                </ul>
                <div class="nav-search" id="nav-search">
                    <form class="form-search">
                        <span class="input-icon">
                            <input type="text" placeholder="Tìm kiếm ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                            <i class="ace-icon fa fa-search nav-search-icon"></i>
                        </span>
                    </form>
                </div>
            </div>

            <div class="page-content">
                <div class="page-header">
                    <h1>
                        Bảng điều khiển
                        <small><i class="ace-icon fa fa-angle-double-right"></i> Tổng quan & Thống kê</small>
                    </h1>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="widget-box">
                            <div class="widget-header">
                                <h5 class="widget-title">Tìm kiếm</h5>
                                <div class="widget-toolbar">
                                    <a href="#" data-action="collapse"><i class="ace-icon fa fa-chevron-up"></i></a>
                                </div>
                            </div>
                            <div class="widget-body">
                                <div class="widget-main">
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <div class="col-xs-6">
                                                    <label>Tên tòa nhà</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                                <div class="col-xs-6">
                                                    <label>Diện tích sàn</label>
                                                    <input type="number" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <div class="col-xs-2">
                                                    <label>Quận</label>
                                                    <select class="form-control">
                                                        <option value="">---Chọn quận---</option>
                                                        <option value="1">Quận 1</option>
                                                        <option value="2">Quận 2</option>
                                                        <option value="3">Quận 3</option>
                                                        <option value="4">Quận 4</option>
                                                    </select>
                                                </div>
                                                <div class="col-xs-5">
                                                    <label>Phường</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                                <div class="col-xs-5">
                                                    <label>Đường</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <div class="col-xs-4">
                                                    <label>Số tầng hầm</label>
                                                    <input type="number" class="form-control">
                                                </div>
                                                <div class="col-xs-4">
                                                    <label>Hướng</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                                <div class="col-xs-4">
                                                    <label>Hạng</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <div class="col-xs-3">
                                                    <label>Diện tích từ</label>
                                                    <input type="number" class="form-control">
                                                </div>
                                                <div class="col-xs-3">
                                                    <label>Diện tích đến</label>
                                                    <input type="number" class="form-control">
                                                </div>
                                                <div class="col-xs-3">
                                                    <label>Giá thuê từ</label>
                                                    <input type="number" class="form-control">
                                                </div>
                                                <div class="col-xs-3">
                                                    <label>Giá thuê đến</label>
                                                    <input type="number" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <div class="col-xs-5">
                                                        <label>Tên quản lý</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                    <div class="col-xs-5">
                                                        <label>Số điện thoại quản lý</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                    <div class="col-xs-2">
                                                        <label>Nhân viên</label>
                                                        <select class="form-control">
                                                            <option value="">---Chọn nhân viên---</option>
                                                            <option value="TTP">TTP</option>
                                                            <option value="TP">TP</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <div class="col-xs-6">
                                                    <label class="checkbox-inline"><input type="checkbox"> Nội thất</label>
                                                    <label class="checkbox-inline"><input type="checkbox"> Nguyên căn</label>
                                                    <label class="checkbox-inline"><input type="checkbox"> Tầng trệt</label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <div class="col-xs-6">
                                                    <button type="button" class="btn btn-danger" id="btnSearchBuilding">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"></path>
                                                        </svg>
                                                        Tìm kiếm
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pull-right">
                                <a href="/admin/building-edit">
                                <button type="button" class="btn btn-info" title="Thêm tòa nhà">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-fill-add" viewBox="0 0 16 16">
                                        <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"></path>
                                        <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v7.256A4.5 4.5 0 0 0 12.5 8a4.5 4.5 0 0 0-3.59 1.787A.5.5 0 0 0 9 9.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .39-.187A4.5 4.5 0 0 0 8.027 12H6.5a.5.5 0 0 0-.5.5V16H3a1 1 0 0 1-1-1zm2 1.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3 0v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"></path>
                                    </svg>
                                </button>
                                </a>
                                <button type="button" class="btn btn-danger" title="Xóa tòa nhà">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-fill-dash" viewBox="0 0 16 16">
                                        <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1"></path>
                                        <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v7.256A4.5 4.5 0 0 0 12.5 8a4.5 4.5 0 0 0-3.59 1.787A.5.5 0 0 0 9 9.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .39-.187A4.5 4.5 0 0 0 8.027 12H6.5a.5.5 0 0 0-.5.5V16H3a1 1 0 0 1-1-1zm2 1.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3 0v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"></path>
                                    </svg>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Building List Table -->
                <div class="row">
                    <div class="col-xs-12">
                        <table id="simple-table" class="table table-striped table-bordered table-hover" style="margin: 3em 0 0;">
                            <thead>
                            <tr>
                                <th class="center"><label class="pos-rel"><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
                                <th>Tên tòa nhà</th>
                                <th>Địa chỉ</th>
                                <th>Số tầng hầm</th>
                                <th>Tên quản lý</th>
                                <th>Số điện thoại quản lý</th>
                                <th>DT sàn</th>
                                <th>DT trống</th>
                                <th>DT thuê</th>
                                <th>Phí môi giới</th>
                                <th>Thao tác</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="center"><label class="pos-rel"><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
                                <td>ACM Building</td>
                                <td>123 Đường Lê Lợi, Quận 1</td>
                                <td>2</td>
                                <td>Nguyễn Văn A</td>
                                <td>0909123456</td>
                                <td>500 m²</td>
                                <td>100 m²</td>
                                <td>400 m²</td>
                                <td>5%</td>
                                <td>
                                    <div class="hidden-sm hidden-xs btn-group">
                                        <button class="btn btn-xs btn-success" title="Giao tòa nhà" onclick="assignmentBuilding(1)"><i class="ace-icon fa fa-check bigger-120"></i></button>
                                        <a class="btn btn-xs btn-info" title="Sửa" href="/admin/building-edit"><i class="ace-icon fa fa-pencil bigger-120"></i></a>
                                        <button class="btn btn-xs btn-danger" title="Xóa"><i class="ace-icon fa fa-trash-o bigger-120"></i></button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center"><label class="pos-rel"><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
                                <td>ThePhap Building</td>
                                <td>456 Đường Nguyễn Huệ, Quận 1</td>
                                <td>3</td>
                                <td>Trần Thị B</td>
                                <td>0918234567</td>
                                <td>600 m²</td>
                                <td>150 m²</td>
                                <td>450 m²</td>
                                <td>6%</td>
                                <td>
                                    <div class="hidden-sm hidden-xs btn-group">
                                        <button class="btn btn-xs btn-success" title="Giao tòa nhà" onclick="assignmentBuilding(2)"><i class="ace-icon fa fa-check bigger-120"></i></button>
                                        <a class="btn btn-xs btn-info" title="Sửa" href="/admin/building-edit">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </a>
                                        <button class="btn btn-xs btn-danger" title="Xóa"><i class="ace-icon fa fa-trash-o bigger-120"></i></button>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Assignment Modal -->
<div class="modal fade" id="assignmentBuildingModal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Giao tòa nhà</h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped table-bordered table-hover" id="staffList">
                    <thead>
                    <tr>
                        <th class="center">Chọn</th>
                        <th class="center">Tên nhân viên</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="center"><input type="checkbox" id="checkbox_1" value="1"></td>
                        <td>Nguyễn Văn A</td>
                    </tr>
                    <tr>
                        <td class="center"><input type="checkbox" id="checkbox_2" value="2"></td>
                        <td>Trần Thị B</td>
                    </tr>
                    </tbody>
                </table>
                <input type="hidden" id="buildingId" name="buildingId" value="">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="btnAssignmentBuilding">Giao tòa nhà</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            </div>
        </div>
    </div>
</div>

<!-- Required Scripts -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- Ace Admin JS (assumed path, adjust as needed) -->
<script src="/assets/js/ace.min.js"></script>
<script>
    function assignmentBuilding(buildingId) {
        $("#buildingId").val(buildingId);
        $("#assignmentBuildingModal").modal("show");
    }
</script>

<script>
    $('#btnassisgnmentBuilding').click(function(e){
        e.preventDefault();
        var data = {};
        data['buildingId']= $('#buildingId').val();
        var staffs = $('#staffList').find('tbody input[type = checkbox]:checked').map(function() {
            return $(this).val();
        }).get();
        data['staffs'] = staffs;
        console.log("OK");
    });
</script>
</body>
</html>