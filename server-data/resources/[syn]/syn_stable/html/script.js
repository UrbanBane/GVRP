let CompData = {};
var dialogConfig = {
    modal: true,
    bgiframe: true,
    width: 500,
    height: 200,
    autoOpen: false
};
$(document).ready(function () {
    $("#creatormenu").hide();
    $(".horseStats").hide();

    $("#purchaseDialog").dialog(dialogConfig);
    $("#saleDialog").dialog(dialogConfig);
    $("#purchaseDialogSex").dialog(dialogConfig);
    $("#purchaseDialogWagon").dialog(dialogConfig);

});

var currentHorse = "";
var currentHorseCategory = "";

$(document).on('click', 'li.horseCategory', function (e) {
    var category = $(this).data("category");
    if (currentHorseCategory === category) return;
    currentHorseCategory = category;
    $('.horseStats').hide();
});


$(document).on('click', 'div.horseClick', function (e) {
    // show horse stats
    var breedImg = $(this).data("horse");
    if (currentHorse === breedImg) return; // do nothing
    currentHorse = breedImg;
    var horseStat = `stat/${currentHorse}.png`;
    var horseImg = $(".horseStats");
    horseImg.attr("src", horseStat);
    horseImg.show();
    
});

$(document).on('error', '.horseStats', function (e) {
    $(this).hide(); // Hide the element if it has an error, like image missing
});

window.addEventListener('message', function (event) {

    // NOTE: Blue, add a NUI Message Type so you do not get NUI Messages confused over multiple resources
    // var isStableEvent = event.data.type === "stable";
    // if (!isStableEvent) return; // its nothing to do with stables, so we don't run

    if (event.data.action == "hide") {
        $("#creatormenu").fadeOut(500);
        $('.horseStats').hide();
        return;
    }

    if (event.data.MessageType === "stableSettings") {
        if (event.data.EnableCustom) {
            $('#button-customization').show();
        } else {
            $('#button-customization').hide();
        }
    }

    if (event.data.action == "show") {
        $("#creatormenu").fadeIn(500);

        if (event.data.CompData) {
            CompData = event.data.CompData;
        }
        if (event.data.EnableBuy == true) {
            $('#button-shop').show();
            $('#button-wagon').show();
        } else {
            $('#button-shop').hide();
            $('#button-wagon').hide();
        }

        var isShopData = event.data?.shopData;
        var isWagonData = event.data?.wagonData;

        if (isShopData) {
            for (const [index, table] of Object.entries(event.data.shopData)) {
                var horseCategory = table.name
                let breeedImg = horseCategory.replace(/ /g, ""); // to get images by name and delete spaces 
                

                if ($(`#page_shop .scroll-container .collapsible #${index}`).length <= 0) {
                    $('#page_shop .scroll-container .collapsible').append(`
                        <li id="${index}" class="horseCategory" data-category="${breeedImg}">
                            <div class="collapsible-header col s12 panel ">
                                <div class="col s12 panel-title">
                                    <img src="img/${breeedImg}.png">${horseCategory}</span>
                                </div>
                            </div>
                            <div class="collapsible-body item-bg">
                            </div>
                        </li>
                    `);
                }

                for (const [_, horseData] of Object.entries(table)) {
                    if (_ != 'name') {
                        let Modelhorse
                        var HorseName = horseData[0];
                        var priceGold = horseData[1];
                        var priceDolar = horseData[2];
                        let breeedImg = HorseName.replace(/ /g, "");
                        var BuyModel = null;

                        var canBuyWithGold = priceGold > 0;
                        var canBuyWithCash = priceDolar > 0;

                        var html = `<div id="${_}" onhover="loadHorse(this)" class="col s12 panel item">`;

                        html += `
                                <div class="col s6 panel-col item horseClick" data-horse="${breeedImg}">
									<span>Click here to preview</span>
                                    <img src="img/horse3.png" style="background-color: transparent; border: 0;><span class="grey-tex"></span>
                                    <h6 class="grey-text title" style="color:black;">${HorseName}</h6>
                                </div>
                                <div class="buy-buttons">
                                    <span class="horse-price2">Purchase Horse?</span>
                                        <table class="priceTable" border="0">
                                `;

                        if (canBuyWithGold) {
                            html += `
                            <tr>
                                <td>
                                    <button class="btn-small"  onclick="buyHorse('${_}', ${priceGold}, true)">                                                
                                        <img src="img/gold.png"><span class="horse-price">${priceGold}</span>
                                    </button>
                                </td>
                            </tr>`;
                        }

                        if (canBuyWithCash) {
                            html += `
                            <tr>
                                <td>
                                    <button class="btn-small"  onclick="buyHorse('${_}', ${priceDolar}, false)">
                                      <img src="img/money.png"><span class="horse-price">${priceDolar}</span>
                                    </button>
                                </td>
                            </tr>`;
                        }

                        html += `</table>
                            </div>        
                        </div>`;

                        $(`#page_shop .scroll-container .collapsible #${index} .collapsible-body`).append(html);

                        $(`#page_shop .scroll-container .collapsible #${index} .collapsible-body #${_}`).hover(function () {
                            $(this).click(function () {


                                $(Modelhorse).addClass("selected");
                                $('.selected').removeClass("selected");

                                Modelhorse = $(this).attr('id');
                                $(this).addClass('selected');

                                $.post('http://syn_stable/loadHorse', JSON.stringify({ horseModel: $(this).attr('id') }));
                            });

                        }, function () { });
                    }
                }

            }

            $('#page_myhorses .scroll-container .collapsible').html('');
            $('#page_myhorses .scroll-container .collapsible').append(`
                <li>
                    <div class="collapsible-header col s12 panel ">
                        <div class="col s12 panel-title">
                            <h6 class="grey-text" style="color:white;">YOU DO NOT HAVE HORSES</h6>
                        </div>
                    </div>
                </li>
            `);
            $('.collapsible').collapsible();
        }

        if (isWagonData) {
            for (const [index, table] of Object.entries(event.data.wagonData)) {
                var wagonCategory = table.name
                let wagonImg = wagonCategory.replace(/ /g, ""); // to get images by name and delete spaces //

                if ($(`#page_wagon .scroll-container .collapsible #${index}`).length <= 0) {
                    $('#page_wagon .scroll-container .collapsible').append(`
                        <li id="${index}">
                            <div class="collapsible-header col s12 panel ">
                                <div class="col s12 panel-title">
                                    <img src="img/${wagonImg}.png">${wagonCategory}</span>
                                </div>
                            </div>
                            <div class="collapsible-body item-bg">
                            </div>
                        </li>
                    `);
                }

                for (const [_, wagonsData] of Object.entries(table)) {
                    if (_ != 'name') {
                        let Modelwagon
                        var wagonName = wagonsData[0];
                        var priceGold = wagonsData[1];
                        var priceDolar = wagonsData[2];
                        var invMaxItems = wagonsData[3];
                        var BuyModel = null;                      
                        var canBuyWithGold = priceGold > 0;
                        var canBuyWithCash = priceDolar > 0;

                        var html = `<div id="${_}" onhover="loadwagon(this)" class="col s12 panel item2">`;


                        html += `
                                <div class="col s6 panel-col item">
									<span>Click here to preview</span>
                                    <img src="img/wheel.png" style="background-color: transparent; border: 0;><span class="grey-tex"></span>
                                    <h6 class="grey-text title" style="color:black;">${wagonName}</h6>
                                </div>
                                <div class="buy-buttons">
                                    <span class="horse-price3">Purchase Wagon?</span>
                                    
                                        <table class="priceTable" border="0">
                                `;





                        if (canBuyWithGold) {
                            html += `       
                                <tr>
                                    <td>
                                        <button class="btn-small"  onclick="buywagon('${_}', ${priceGold}, true)">                                                
                                            <img src="img/gold.png"><span class="horse-price">${priceGold}</span>
                                               
                                        </button>
                                    </td>
                                </tr>`;
                        } 

                        if (canBuyWithCash) {
                            html += `
                                <tr>
                                    <td>
                                        <button class="btn-small"  onclick="buywagon('${_}', ${priceDolar}, false)">
                                            <img src="img/money.png"><span class="horse-price">${priceDolar}</span>
                                        </button>
                                        
                                       
                                    </td>
                                </tr>`;
                        }

                        html += `</table>

                                </div>
                               
                                <div class="logo">
                                <img src="img/weight.png"><span class="weight">${invMaxItems}</span>
                                </div>
                                 
                                
                            </div>`;


                        $(`#page_wagon .scroll-container .collapsible #${index} .collapsible-body`).append(html);

                        $(`#page_wagon .scroll-container .collapsible #${index} .collapsible-body #${_}`).hover(function () {
                            $(this).click(function () {


                                $(Modelwagon).addClass("selected");
                                $('.selected').removeClass("selected");

                                Modelwagon = $(this).attr('id');
                                $(this).addClass('selected');

                                $.post('http://syn_stable/loadwagon', JSON.stringify({ wagonmodel: $(this).attr('id') }));
                            });

                        }, function () { });


                    }
                }

            }

            $('#page_mywagons .scroll-container .collapsible').html('');
            $('#page_mywagons .scroll-container .collapsible').append(`
                <li>
                    <div class="collapsible-header col s12 panel ">
                        <div class="col s12 panel-title">
                            <h6 class="grey-text">YOU DO NOT HAVE Wagons</h6>
                        </div>
                    </div>
                </li>
            `);
            $('.collapsible').collapsible();
        }
    }

    if (event.data.myHorsesData) {

        $('#page_myhorses .scroll-container .collapsible').html('');

        for (const [ind, tab] of Object.entries(event.data.myHorsesData)) {

            let HorseName = tab.name;
            let HorseID = tab.id;
            let HorseIdModel = tab.model;
            let model = HorseIdModel.split("_"); /*  split _ to get name   */
            let componentsh = tab.components;
            let selectedh = tab.selected;
			let defaultText = "";
			if (selectedh == 1) {
				defaultText = "Default Horse"
			}
            $('#page_myhorses .scroll-container .collapsible').append(`
                <li>
                    <div id="heads" class="collapsible-header col s12 panel" style="background-color: transparent; border: 0;">
                        <div class="col s12 panel-title1">
                        <span class="grey-tex">${defaultText}</span>
                        <img src="img/${model[3]}.png"><span class="grey-text1">${HorseName}</span>
                        </div>
                    </div>
                    <div class="collapsible-body col s12 panel itemsell" id="${HorseID}">
                        <div class="col s4 panel-col itemsell" onclick="SelectHorse(${HorseID})">
                            <img src="img/horse.png"><span class="grey-tex"></span>
                            <h6 class="grey-textinfo"style="color:black;">Set as Default</h6>
                        </div>
                        <div class="col s4 panel-col itemsell" onclick="CustomiseHorse(${HorseID})">
                            <img src="img/horse.png"><span class="grey-tex"></span>
                            <h6 class="grey-textinfo"style="color:black;">Customise</h6>
                        </div>
                        <div class="col s4 panel-col itemsell" onclick="SellHorse(${HorseID})">
                            <img src="img/moneyh.png"><span class="grey-tex"></span>
                            <h6 class="grey-textinfo" style="color:black;">Sell</h6>
                        </div>
                    </div>
                </li> 
            `);

            $(`#page_myhorses .scroll-container .collapsible #${HorseID}`).hover(function () {
                $(this).click(function () {
                    let HorseSEID
                    $(HorseID).addClass("selected");
                    $('.selected').removeClass("selected");

                    HorseSEID = $(HorseID).attr('id');
                    $(HorseID).addClass('selected');

                    // $.post('http://syn_stable/'+component, JSON.stringify({ id: nValue }));

                    $.post('http://syn_stable/loadMyHorse', JSON.stringify({ IdHorse: HorseID, horseModel: HorseIdModel, HorseComp: componentsh }));
                    $.post('http://defaulthorse/update');
                });
            }, function () { });
        }
    }
    if (event.data.mywagondata) {

        $('#page_mywagons .scroll-container .collapsible').html('');

        for (const [ind, tab] of Object.entries(event.data.mywagondata)) {

            let wagonname = tab.name;
            let wagonid = tab.id;
            let wagonIdModel = tab.model;
            let selectedw = tab.selected;
			let defaultText = "";
			if (selectedw == 1) {
				defaultText = "Default Wagon"
			}
            $('#page_mywagons .scroll-container .collapsible').append(`
                <li>
                    <div id="heads" class="collapsible-header col s12 panel" style="background-color: transparent; border: 0;">
                        <div class="col s12 panel-title1">
                            <span class="grey-tex">${defaultText}</span>
                            <img src="img/Other.png"><span class="grey-text1">${wagonname}</span>
                        </div>
                    </div>
                    <div class="collapsible-body col s12 panel itemsell" id="${wagonid}">
                        <div class="col s6 panel-col itemsell" onclick="selectwagon(${wagonid})">
                            <img src="img/wheel.png"><span class="grey-tex"></span>
                            <h6 class="grey-textinfo " style="color:black;">Set as Default</h6>
                        </div>
                        <div class="col s6 panel-col itemsell" onclick="Sellwagon(${wagonid})">
                            <img src="img/moneyh.png"><span class="grey-tex"></span>
                            <h6 class="grey-textinfo " style="color:black;">Sell</h6>
                        </div>
                    </div>
                </li> 
            `);

            $(`#page_mywagons .scroll-container .collapsible #${wagonid}`).hover(function () {
                $(this).click(function () {
                    let wagonSEID
                    $(wagonid).addClass("selected");
                    $('.selected').removeClass("selected");

                    wagonSEID = $(wagonid).attr('id');
                    $(wagonid).addClass('selected');

                    $.post('http://syn_stable/loadMywagons', JSON.stringify({ Idwagon: wagonid, wagonModel: wagonIdModel }));
                });
            }, function () { });
        }
    }

});

function rotate() {
    $.post('http://syn_stable/rotate')

}

function Close(isStable = false) {
    var endpoint = isStable ? "CloseStable" : "Close";
    $.post(`http://syn_stable/${endpoint}`);
    Reset();
}

var currentPage = 'page_myhorses';

$('.menu-selectb').on('click', function () {
	$('#page_customization').hide();
    $(`#${currentPage}`).hide();

    currentPage = $(this).data('target');
    $(`#${currentPage}`).show();
    $('.horseStats').hide();
	
	if (currentPage2 == "page_customization") {
		$('#page_customization').show();
	}

    $('.menu-selectb.active').removeClass('active');
    $(this).addClass('active');
});

var currentPage2 = 'page_mywagons';

$('.menu-selectb').on('click', function () {
	$('#page_customization').hide();
    $(`#${currentPage2}`).hide();

    currentPage2 = $(this).data('target');
    $(`#${currentPage2}`).show();
	
	if (currentPage2 == "page_customization") {
		$('#page_customization').show();
	}

    $('.menu-selectb.active').removeClass('active');
    $(this).addClass('active');
});

$('.button-right').on('click', function () {
    var inputElement = $(this).parent().find('input');
    var component = $(inputElement).attr('id');

    var value = Number($(inputElement).attr('value'));
    
    var nValue = value + 1;
    var min = $(inputElement).attr('min');
    var max = $(inputElement).attr('max');
    var id = $(inputElement).attr('id');

    if (nValue > max) {
        nValue = min;
    }

    $(inputElement).attr('value', nValue);

    var titleElement = $(this).parent().parent().find('.grey-text');
    var text = titleElement.text();

    var price = nValue != 0 ? CompData[id][nValue - 1].price : 0;
    titleElement.text('$' + price + '--' + nValue + '/' + max);
    $.post('http://syn_stable/' + component, JSON.stringify({ id: nValue }));
});

$('.button-left').on('click', function () {
    var inputElement = $(this).parent().find('input');
    var component = $(inputElement).attr('id');

    var value = Number($(inputElement).attr('value'));
  

    var nValue = value - 1;

    var min = $(inputElement).attr('min');
    var max = $(inputElement).attr('max');
    var id = $(inputElement).attr('id');
    if (nValue < min) {
        nValue = max;
    }

    $(inputElement).attr('value', nValue);

    var titleElement = $(this).parent().parent().find('.grey-text');
    var text = titleElement.text();
   

    var price = nValue != 0 ? CompData[id][nValue - 1].price : 0;
    titleElement.text('$' + price + '--' + nValue + '/' + max);
    $.post('http://syn_stable/' + component, JSON.stringify({ id: nValue }));
});

$(".input-number").on("change paste keyup", function () {

    var min = Number($(this).attr('min'));
    var max = Number($(this).attr('max'));

    var value = $(this).val();

    if (value == '' || value < min) {
        value = min;
        $(this).val(value);
    }

    if (value > max) {
        value = max;
        $(this).val(value);
    }

    var titleElement = $(this).parent().parent().find('.grey-text3');
    var text = titleElement.text();
    var component = text.split(' ')[0];

    titleElement.text(component + ' ' + value + '/' + max);

});

function buyHorse(Modelhor, price, isGold) {
    $("#purchaseDialogSex").dialog('option', 'buttons', {
        "Male": function () {
            purchaseHorseDialog(Modelhor, price, isGold, "male")
            $(this).dialog("close");
        },
        "Female": function () {
            purchaseHorseDialog(Modelhor, price, isGold, "female")
            $(this).dialog("close");
        },
        "Cancel": function () {
            $(this).dialog("close");
        }
    });

    $("#purchaseDialogSex").dialog("open");
}

function purchaseHorseDialog(Modelhor, price, isGold, sex) {
    $("#purchaseDialog").dialog('option', 'buttons', {
        "Confirm": function () {
            var endpoint = sex === "male" ? "BuyHorse" : "BuyHorseF";

            var data = { ModelH: Modelhor, IsGold: isGold }

            if (isGold) {
                data["Gold"] = price;
            } else {
                data["Dollar"] = price;
            }

            $.post(`http://syn_stable/${endpoint}`, JSON.stringify(data));

            $(this).dialog("close");
            Reset();
        },
        "Cancel": function () {
            $(this).dialog("close");
        }
    });

    $("#purchaseDialog").dialog("open");
}

function buywagon(Modelhor, price, isGold) {
   
    $("#purchaseDialogWagon").dialog('option', 'buttons', {
        "Confirm": function () {
            var data = { ModelH: Modelhor, IsGold: isGold }

            if (isGold) {
                data["Gold"] = price;
            } else {
                data["Dollar"] = price;
            }

            $.post(`http://syn_stable/BuyWagon`, JSON.stringify(data));
            $(this).dialog("close");
            Reset();
        },
        "Cancel": function () {
            $(this).dialog("close");
        }
    });

    $("#purchaseDialogWagon").dialog("open");
    

}






function SelectHorse(IdHorse) {
	$('#page_myhorses .collapsible-header .grey-tex').each(function() {
		$(this).text("");
	});					
	$(`#${IdHorse}`).closest('li').find('.collapsible-header .grey-tex').text("Default Horse");
	
    $.post('http://syn_stable/selectHorse', JSON.stringify({ horseID: IdHorse }))
}
function selectwagon(Idwagon) {
	$('#page_mywagons .collapsible-header .grey-tex').each(function() {
		$(this).text("");
	});
	$(`#${Idwagon}`).closest('li').find('.collapsible-header .grey-tex').text("Default Wagon");
	
    $.post('http://syn_stable/selectwagon', JSON.stringify({ wagonID: Idwagon }))
}


function SellHorse(IdHorse) {
    $("#saleDialog").dialog('option', 'buttons', {
        "Confirm": function () {
            $.post('http://syn_stable/sellHorse', JSON.stringify({ horseID: IdHorse }))
            $(this).dialog("close");
            Reset();
        },
        "Cancel": function () {
            $(this).dialog("close");
        }
    });

    $("#saleDialog").dialog("open");
}


function CustomiseHorse(IdHorse) {
	var currentPage = 'page_myhorses';
    $(`#${currentPage}`).hide();

    $(`#button-customization`).show();
    $('.horseStats').hide();

    $('.menu-selectb.active').removeClass('active');
    $(`#button-customization`).addClass('active');
	$('#page_customization').show();
}

function Sellwagon(wagonid) {
    $("#saleDialog").dialog('option', 'buttons', {
        "Confirm": function () {
            $.post('http://syn_stable/sellwagon', JSON.stringify({ wagonID: wagonid }))
            $(this).dialog("close");
            Reset();
        },
        "Cancel": function () {
            $(this).dialog("close");
        }
    });

    $("#saleDialog").dialog("open");

}

function Reset() {
    $('#button-customization').addClass("disabled");
    $('#button-customization').hide();
    $('.menu-selectb.active').removeClass('active');
    $('#button-myhorses').addClass('active');
	currentPage = 'page_myhorses'
    $('page_myhorses').show();
	$('#page_customization').hide();
    $('#page_myhorses .scroll-container .collapsible').html('');
    $('#page_mywagons .scroll-container .collapsible').html('');
    $('#page_shop .scroll-container .collapsible').html('');
    $('#page_shop1 .scroll-container .collapsible').html('');
    $('#page_wagon .scroll-container .collapsible').html('');
    $("#creatormenu").fadeOut(500);
    $('.horseStats').hide();
}