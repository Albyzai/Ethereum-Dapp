const _deploy_contracts = require("../migrations/2_deploy_contracts")

const Bank = artifacts.require("Bank")

contract('Bank', async accounts => {

    const acc1 = accounts[0]
    const acc2 = accounts[1]
    const acc3 = accounts[2]

    it('should send 0.1 eth to the contract', async () => {
        let instance = (await Bank.deployed())
        let balance = (await instance.getBalance.call({from: acc1}))
        console.log('acc1: ', acc1)
        console.log('balanceeeeee: ', balance)
    })

    it('should fail if user withdraws more than stored in contract', async () => {

    })
})