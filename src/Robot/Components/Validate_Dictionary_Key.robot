*** Settings ***
Library     Collections


*** Keywords ***
Validate Dictionary Keys
    [Arguments]    @{LIST_KEYS}    ${PRIMARY_KEY}
    FOR    ${KEY}    IN    @{LIST_KEYS}
        Dictionary Should Contain Key    ${PRIMARY_KEY}    ${KEY}
    END
