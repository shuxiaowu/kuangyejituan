                        // <div class="row">
                        //                 <div class="col-lg-7 colRowForm">
                        //                         <div class="colRowFormBlue">
                        //                                 <label>省份：</label>
                        //                                 <select id="province">
                        //                                         <option>请选择</option>
                        //                                 </select>
                        //                                 <label>城市：</label>
                        //                                 <select id="provinceCity" class="slectFrom">
                        //                                         <option>请选择</option>
                        //                                 </select>
                        //                                 <label>街道：</label>
                        //                                 <select id="Citystreet" class="slectFrom">
                        //                                         <option>请选择</option>
                        //                                 </select>
                        //                         </div>
                        //                 </div>
                        //         </div>
                        $(function() {
                            json = [{
                                    "code": "01",
                                    "name": "河南",
                                    "city": [{
                                        "codec": "0101",
                                        "namec": "郑州",
                                        "streetc": [{
                                            "codeCc": "010101",
                                            "nameCc": "金水区"
                                        }, {
                                            "codeCc": "010102",
                                            "nameCc": "惠济区"
                                        }, {
                                            "codeCc": "010103",
                                            "nameCc": "二七区"
                                        }]
                                    }, {
                                        "codec": "0102",
                                        "namec": "商丘",
                                        "streetc": [{
                                            "codeCc": "010201",
                                            "nameCc": "商丘街区1"
                                        }, {
                                            "codeCc": "010202",
                                            "nameCc": "商丘街区2"
                                        }, {
                                            "codeCc": "010203",
                                            "nameCc": "商丘街区3"
                                        }]
                                    }, {
                                        "codec": "0103",
                                        "namec": "信阳",
                                        "streetc": [{
                                            "codeCc": "010201",
                                            "nameCc": "信阳街区1"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "信阳街区2"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "信阳街区3"
                                        }]
                                    }]
                                },
                                {
                                    "code": "02",
                                    "name": "山东",
                                    "city": [{
                                        "codec": "0201",
                                        "namec": "淄博",
                                        "streetc": [{
                                            "codeCc": "010201",
                                            "nameCc": "淄博街区1"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "淄博街区2"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "淄博街区3"
                                        }]
                                    }, {
                                        "codec": "0202",
                                        "namec": "青岛",
                                        "streetc": [{
                                            "codeCc": "010201",
                                            "nameCc": "青岛街区1"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "青岛街区2"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "青岛街区3"
                                        }]
                                    }, {
                                        "codec": "0203",
                                        "namec": "潍坊",
                                        "streetc": [{
                                            "codeCc": "010201",
                                            "nameCc": "潍坊街区1"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "潍坊街区2"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "潍坊街区3"
                                        }]
                                    }]
                                },
                                {
                                    "code": "03",
                                    "name": "江苏",
                                    "city": [{
                                        "codec": "0301",
                                        "namec": "苏州",
                                        "streetc": [{
                                            "codeCc": "010201",
                                            "nameCc": "苏州街区1"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "苏州街区2"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "苏州街区3"
                                        }]
                                    }, {
                                        "codec": "0302",
                                        "namec": "南京",
                                        "streetc": [{
                                            "codeCc": "010201",
                                            "nameCc": "南京街区1"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "南京街区2"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "南京街区3"
                                        }]
                                    }, {
                                        "codec": "0303",
                                        "namec": "无锡",
                                        "streetc": [{
                                            "codeCc": "010201",
                                            "nameCc": "无锡街区1"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "无锡街区2"
                                        }, {
                                            "codeCc": "010201",
                                            "nameCc": "无锡街区3"
                                        }]
                                    }]
                                }

                            ];
                            $.each(json, function(index, row) {
                                $("#province").append("<option value=" + row.code + ">" + row.name + "</option>");

                            });
                            $("#province").change(function() {
                                var province = $(this).val();
                                if (province == "请选择") {
                                    return;
                                } else {
                                    provinceCity(province);
                                }
                            });
                            $("#provinceCity").change(function() {
                                var cityName = $(this).val();
                                cityStreet(cityName);
                            });

                        });

                        function provinceCity(nameProvince) {
                            $("#provinceCity").empty();
                            $("#Citystreet").empty();
                            $.each(json, function(index, row) {
                                if (row.code == nameProvince) {
                                    $.each(row.city, function(indec, rowc) {
                                        $("#provinceCity").append("<option value=" + rowc.codec + ">" + rowc.namec + "</option>");
                                        if (indec == 0) {
                                            $.each(rowc.streetc, function(indeCc, rowCc) {
                                                $("#Citystreet").append("<option value=" + rowCc.codeCc + ">" + rowCc.nameCc + "</option>");
                                            });
                                        }
                                    });
                                }
                            });
                        };

                        function cityStreet(nameCity) {
                            $("#Citystreet").empty();
                            $.each(json, function(index, row) {
                                $.each(row.city, function(indec, rowc) {
                                    if (rowc.codec == nameCity) {
                                        $.each(rowc.streetc, function(indeCc, rowCc) {
                                            $("#Citystreet").append("<option value=" + rowCc.codeCc + ">" + rowCc.nameCc + "</option>");
                                        });
                                    }
                                });
                            });

                        };