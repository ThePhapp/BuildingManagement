<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Add Building</title>
</head>
<body>
<div class="main-content" id="main-container">
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>
                    <li class="active">Dashboard</li>
                </ul><!-- /.breadcrumb -->

                <div class="nav-search" id="nav-search">
                    <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
                    </form>
                </div><!-- /.nav-search -->
            </div>

            <div class="page-content">
                <div class="ace-settings-container" id="ace-settings-container">
                    <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                        <i class="ace-icon fa fa-cog bigger-130"></i>
                    </div>

                    <div class="ace-settings-box clearfix" id="ace-settings-box">
                        <div class="pull-left width-50">
                            <div class="ace-settings-item">
                                <div class="pull-left">
                                    <select id="skin-colorpicker" class="hide">
                                        <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                        <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                        <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                        <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                    </select>
                                </div>
                                <span>&nbsp; Choose Skin</span>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
                                <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                                <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
                                <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                                <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                                <label class="lbl" for="ace-settings-add-container">
                                    Inside
                                    <b>.container</b>
                                </label>
                            </div>
                        </div><!-- /.pull-left -->

                        <div class="pull-left width-50">
                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" />
                                <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" />
                                <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" />
                                <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                            </div>
                        </div><!-- /.pull-left -->
                    </div><!-- /.ace-settings-box -->
                </div><!-- /.ace-settings-container -->

                <div class="page-header">
                    <h1>Edit Building <small><i class="ace-icon fa fa-angle-double-right"></i> overview & stats</small></h1>
                </div>

                <div class="row">
                    <div class="col-xs-12">
                        <form class="form-horizontal" role="form" id="form-edit">
                            <div class="form-container">
                                <!-- Building Information Section -->
                                <h3 class="form-section">Thông tin cơ bản</h3>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Tên tòa nhà</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="name" name="name" placeholder="Nhập tên tòa nhà">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Quận</label>
                                    <div class="col-xs-4">
                                        <select id="districtid" class="form-control">
                                            <option value="">---Chọn quận---</option>
                                            <option value="1">Quận 1</option>
                                            <option value="2">Quận 2</option>
                                            <option value="3">Quận 3</option>
                                            <option value="4">Quận 4</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Phường</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text"  id="ward" name="ward" placeholder="Nhập tên phường">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Đường</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text"  id="street" name="street" placeholder="Nhập tên đường">
                                    </div>
                                </div>

                                <!-- Structure Section -->
                                <h3 class="form-section">Thông tin cấu trúc</h3>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Kết cấu</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text"  id="structure" name="structure" placeholder="Ví dụ: 1 trệt 5 lầu">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Số tầng hầm</label>
                                    <div class="col-xs-4">
                                        <input class="form-control" type="number"  id="numberofbasement" name="numberofbasement" min="0" placeholder="0">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Diện tích sàn</label>
                                    <div class="col-xs-4">
                                        <input class="form-control" type="number" id="floorarea"  name="floorarea" min="0" placeholder="m²">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Hướng</label>
                                    <div class="col-xs-4">
                                        <input class="form-control" type="text" id="direction"  name="direction" placeholder="Ví dụ: Đông Nam">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Hạng</label>
                                    <div class="col-xs-4">
                                        <input class="form-control" type="text"  id="level" name="level" placeholder="Ví dụ: A, B, C">
                                    </div>
                                </div>

                                <!-- Pricing Section -->
                                <h3 class="form-section">Thông tin giá cả</h3>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Diện tích thuê</label>
                                    <div class="col-xs-4">
                                        <input class="form-control" type="number"  id="rentarea" name="rentarea" min="0" placeholder="m²">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Giá thuê</label>
                                    <div class="col-xs-4">
                                        <input class="form-control" type="number" id="rentprice"  name="rentprice" min="0" placeholder="VNĐ">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Mô tả giá</label>
                                    <div class="col-xs-9">
                                        <input class="form-control" type="text" id="rentpriceescription" name="rentpriceescription" placeholder="Mô tả chi tiết giá thuê">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Phí dịch vụ</label>
                                    <div class="col-xs-4">
                                        <input class="form-control" type="number" id="serviceFee"  name="serviceFee" min="0" placeholder="VNĐ">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Tiền điện</label>
                                    <div class="col-xs-4">
                                        <input class="form-control" type="number" id="electricityFee" name="electricityFee" min="0" placeholder="VNĐ">
                                    </div>
                                </div>

                                <!-- Building Type Section -->
                                <h3 class="form-section">Loại tòa nhà</h3>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Loại hình</label>
                                    <div class="col-xs-9">
                                        <label class="checkbox-inline">
                                            <input type="checkbox" name="typeCode" value="noi-that"> Nội thất
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" name="typeCode" value="nguyen-can"> Nguyên căn
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" name="typeCode" value="tang-tret"> Tầng trệt
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-offset-3 col-xs-9">
                                        <button type="submit" class="btn btn-primary" id="btnAddBuilding">Thêm tòa nhà</button>
                                        <button type="reset" class="btn btn-default">Hủy</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <style>
                    .form-container {
                        background: #f9f9f9;
                        padding: 20px;
                        border-radius: 8px;
                        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
                    }

                    .form-section {
                        color: #2c3e50;
                        border-bottom: 2px solid #3498db;
                        padding-bottom: 5px;
                        margin: 20px 0 15px 0;
                        font-family: 'Times New Roman', Times, serif;
                    }

                    .form-group {
                        margin-bottom: 20px;
                    }

                    .control-label {
                        font-weight: 600;
                        padding-top: 7px;
                        font-family: 'Times New Roman', Times, serif;
                    }

                    .form-control {
                        border-radius: 4px;
                        border: 1px solid #ddd;
                        box-shadow: inset 0 1px 2px rgba(0,0,0,0.05);
                    }

                    .form-control:focus {
                        border-color: #3498db;
                        box-shadow: 0 0 5px rgba(52,152,219,0.3);
                    }

                    .checkbox-inline {
                        margin-right: 15px;
                        font-family: 'Times New Roman', Times, serif;
                    }

                    @media (max-width: 767px) {
                        .control-label {
                            margin-bottom: 5px;
                        }
                        .col-xs-3, .col-xs-9, .col-xs-4 {
                            width: 100%;
                        }
                    }
                </style>
            </div>
            <!-- Bảng danh sách -->
        </div><!-- /.page-content -->
    </div><!-- /.main-content -->
    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->
</body>
</html>
