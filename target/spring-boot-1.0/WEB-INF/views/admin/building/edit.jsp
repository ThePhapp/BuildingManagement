<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="buildingAPI" value="/api/building"/>

<html>
<head>
    <title>Add/Edit Building</title>
</head>
<body>
<div class="main-content" id="main-container">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>

            <ul class="breadcrumb">
                <li><i class="ace-icon fa fa-home home-icon"></i><a href="#">Home</a></li>
                <li class="active">Dashboard</li>
            </ul>
        </div>

        <div class="page-content">
            <div class="page-header">
                <h1>
                    ${empty BuildingEdit.id ? 'Thêm' : 'Cập nhật'} Tòa nhà
                    <small><i class="ace-icon fa fa-angle-double-right"></i> overview & stats</small>
                </h1>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <form:form modelAttribute="BuildingEdit" id="buildingForm">
                        <div class="form-container">
                            <!-- Basic Info -->
                            <h3 class="form-section">Thông tin cơ bản</h3>

                            <div class="form-group">
                                <label class="col-xs-3 control-label">Tên tòa nhà</label>
                                <div class="col-xs-9">
                                    <form:input path="name" cssClass="form-control"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-xs-3 control-label">Quận</label>
                                <div class="col-xs-4">
                                    <form:select path="district" cssClass="form-control">
                                        <form:option value="">---Chọn quận---</form:option>
                                        <form:options items="${districts}"/>
                                    </form:select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-xs-3 control-label">Phường</label>
                                <div class="col-xs-9">
                                    <form:input path="ward" cssClass="form-control"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-xs-3 control-label">Đường</label>
                                <div class="col-xs-9">
                                    <form:input path="street" cssClass="form-control"/>
                                </div>
                            </div>

                            <!-- Structure Info -->
                            <h3 class="form-section">Thông tin cấu trúc</h3>

                            <div class="form-group">
                                <label class="col-xs-3 control-label">Số tầng hầm</label>
                                <div class="col-xs-4">
                                    <form:input path="numberOfBasement" cssClass="form-control"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-xs-3 control-label">Diện tích sàn</label>
                                <div class="col-xs-4">
                                    <form:input path="floorArea" cssClass="form-control"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-xs-3 control-label">Hướng</label>
                                <div class="col-xs-4">
                                    <form:input path="direction" cssClass="form-control"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-xs-3 control-label">Hạng</label>
                                <div class="col-xs-4">
                                    <form:input path="level" cssClass="form-control"/>
                                </div>
                            </div>

                            <!-- Pricing Info -->
                            <h3 class="form-section">Thông tin giá cả</h3>

                            <div class="form-group">
                                <label class="col-xs-3 control-label">Diện tích thuê</label>
                                <div class="col-xs-9">
                                    <form:input path="rentAreas" cssClass="form-control"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-xs-3 control-label">Giá thuê</label>
                                <div class="col-xs-4">
                                    <form:input path="rentPrice" cssClass="form-control"/>
                                </div>
                            </div>

                            <!-- Building Type -->
                            <h3 class="form-section">Loại tòa nhà</h3>

                            <div class="form-group">
                                <label class="col-xs-3 control-label">Loại hình</label>
                                <div class="col-xs-9">
                                    <c:forEach var="type" items="${typeCode.data}">
                                        <label>
                                            <input type="checkbox" name="typeCode"
                                                   value="${type.typeCode}" ${type.checked}>
                                                ${type.fullName}
                                        </label>
                                    </c:forEach>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-offset-3 col-xs-9">
                                    <button type="button" class="btn btn-primary" id="btnSaveBuilding">
                                            ${empty BuildingEdit.id ? 'Thêm tòa nhà' : 'Cập nhật tòa nhà'}
                                    </button>
                                    <button type="reset" class="btn btn-default" id="btnCancel">Hủy</button>
                                </div>
                            </div>

                            <form:hidden path="id" id="buildingId"/>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- JQuery -->
<script src="assets/js/jquery.2.1.1.min.js"></script>

<script>
    $(document).ready(function () {
        $('#btnSaveBuilding').click(function (e) {
            e.preventDefault();

            var data = {};
            var typeCodeArr = [];
            var formData = $('#buildingForm').serializeArray();

            $.each(formData, function (i, v) {
                if (v.name === "typeCode") {
                    typeCodeArr.push(v.value);
                } else {
                    data[v.name] = v.value;
                }
            });

            data['typeCode'] = typeCodeArr;

            if (typeCodeArr.length === 0) {
                alert("Vui lòng chọn ít nhất một loại tòa nhà!");
                return;
            }

            $.ajax({
                type: 'POST',
                url: '${buildingAPI}',
                contentType: 'application/json',
                data: JSON.stringify(data),
                dataType: 'json',
                success: function (response) {
                    alert('Lưu tòa nhà thành công!');
                    window.location.href = '/admin/building-list';
                },
                error: function (error) {
                    alert('Có lỗi xảy ra! Vui lòng thử lại.');
                }
            });
        });

        $('#btnCancel').click(function () {
            window.location.href = '/admin/building-list';
        });
    });
</script>

<!-- CSS style -->
<style>
    .form-container {
        background: #f9f9f9;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .form-section {
        color: #2c3e50;
        border-bottom: 2px solid #3498db;
        margin-bottom: 20px;
        padding-bottom: 5px;
        font-weight: bold;
        font-family: 'Times New Roman', Times, serif;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .control-label {
        font-weight: bold;
        font-family: 'Times New Roman', Times, serif;
    }

    .form-control:focus {
        border-color: #3498db;
        box-shadow: 0 0 5px rgba(52, 152, 219, 0.3);
    }
</style>

</body>
</html>
