//https://eth-rinkeby.alchemyapi.io/v2/VGVpp-XBoAREwA28uKPt6EfMMzOQt_2d

require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    rinkeby: {
      url: 'https://eth-rinkeby.alchemyapi.io/v2/VGVpp-XBoAREwA28uKPt6EfMMzOQt_2d',
      //account to deploy contract its private key
      accounts: [
        '7c7dfdef20538a396f44d324f49804c0395a99856d5f267b53a4249fa034f1a7',
      ],
    },
  },
};
