const main = async () => {
  const Tokenatic = await hre.ethers.getContractFactory('Tokenatic');
  const tokenatic = await Tokenatic.deploy();

  await tokenatic.deployed();

  console.log('Contract Tokenatic deployed to:', tokenatic.address);
};

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
};

runMain();
