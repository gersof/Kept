var dataAssesstment = [];
$(document).ready(function () {
    $(".yesbtnclass").click(function () {
        let attrIdQuestion = this.getAttribute("attrIdQuestion");
        let attrCAndPId = this.getAttribute("attrCAndPId");
        SetAnswer(attrIdQuestion, attrCAndPId, 1);
        $("#btnyes_" + attrIdQuestion).removeClass("btn-danger").removeClass("btn-success").addClass("btn-default");
        $("#btnno_" + attrIdQuestion).removeClass("btn-danger").removeClass("btn-success").addClass("btn-default");
        $(this).removeClass("btn-default").addClass("btn-success");
    });

    $(".nobtnclass").click(function () {
        let attrIdQuestion = this.getAttribute("attrIdQuestion");
        let attrCAndPId = this.getAttribute("attrCAndPId");
        SetAnswer(attrIdQuestion, attrCAndPId, 0);
        $("#btnyes_" + attrIdQuestion).removeClass("btn-danger").removeClass("btn-success").addClass("btn-default");
        $("#btnno_" + attrIdQuestion).removeClass("btn-danger").removeClass("btn-success").addClass("btn-default");

        $(this).removeClass("btn-default").addClass("btn-danger");

    });

    $("#SaveData").click(function () {
        let countQuestion = $(".question").length;
        if (countQuestion === dataAssesstment.length) {
            $.post({
                url: "http://localhost:58425/AssessmentTests/CreateAssessment",
                data: JSON.stringify({ assessment: dataAssesstment }),
                type: "POST",
                contentType: "application/json; charset=utf-8",
                dataType: "json",

            }, function () {
            })
                .done(function () {
                    swal("Good job!", "Assesstment is saved!", "success", {
                        button: "Ok",
                    });
                })
                .fail(function () {
                    swal("Something went wrong!", "Assesstment NOT save!", "error", {
                        button: "Ok",
                    });
                });
        } else {
            swal("Please complete the Assesstment!", "Missing fields!", "error", {
                button: "Ok",
            });
        }
    });
});

function SetAnswer(attrIdQuestion, attrCAndPId, SelfScore, SelfComments) {
    let record = getNewItem();
    record.QuestionId = attrIdQuestion;
    record.SelfScore = SelfScore;
    record.SelfComments = SelfComments;
    record.attrCAndPId = attrCAndPId;
    record.Score = 0;
    let search = dataAssesstment.filter((x) => {
        return x.QuestionId === attrIdQuestion;
    });

    if (search.length === 0) {
        dataAssesstment.push(record);
    } else {
        let objIndex = dataAssesstment.findIndex((obj => obj.QuestionId === record.QuestionId));
        dataAssesstment[objIndex] = record;
    }
    updateTotal(attrCAndPId)
}
function getNewItem() {
    return {
        "AssessmentId": 0,
        "CompletedDate": moment(),
        "QuestionId": 0,
        "Score": 0,
        "EmployeeDocumentId": "",
        "SelfScore": 0,
        "SelfComments": "",
        "attrCAndPId": 0
    };
}
function updateTotal(attrCAndPId) {
    let result = dataAssesstment.filter((x) => {
        return (x.attrCAndPId === attrCAndPId);
    });
    $("#total_" + attrCAndPId).html(result.length);
}

