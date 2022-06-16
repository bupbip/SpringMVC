<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">
<@c.page>
    <h5>Ваш личный кабинет.</h5>
    <p class="mt-5">
        <span style="color:gray">Никнейм:</span>
        <span style="color:blue"> ${user.username}</span>
    </p>

    <form action="/account/{user}" method="post">
        <div class="mt-3">
            <p>
                <span style="color:gray">Баланc: ₽</span>
                <span style="color:black">${balance}</span>

            <div class="form-group row">
                <div class="col-sm-3">
                    <input type="number" name="amount" class="form-control" min="0" placeholder="Сумма для пополнения"/>
                    <input type="hidden" value="${user.id}" name="userId">
                    <input type="hidden" value="${_csrf.token}" name="_csrf"/>
                </div>
            </div>
            <button class="btn btn-primary"
                    style="margin-left: 50px; margin-top: 5px"
                    type="submit">
                Пополнить баланс
            </button>
            </p>
        </div>
    </form>

</@c.page>