// SPDX-License-Identifier: MIT
pragma solidity 0.8.7; // Versión del compilador de lenguaje Solidity.

/*
                   MEOW ?
         /\_/\   /
    ____/ o o \
  /~____  =ø= /
 (______)__m_m)
 
*/

// El ERC20 es un estándar para crear criptomonedas.
// Un estándar, en programación, son las reglas que hay que seguir para hacer algo.

// Estas son las funciones del estándar ERC20 que vamos a importar.
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// En la blockchain, los programas se llaman "contratos inteligentes", o SmartContracts.
// Contrato de tipo ERC20 (estandar para crear criptomonedas o token).
contract Xxxxxxxxxxx is ERC20, Ownable {
    // Función para crear y darle nombre a nuestra criptomoneda.
    constructor() ERC20("Xxxxxxxxxxx", "XXXX") {}

    // Esta funcion permite emitir (mintear o acuñar) monedas.
    // para: Address (cuenta) del destinatario.
    // cantidad: Cantidad de monedas que queremos emitirle al destinatario, en wei (centavos).
    // Convertidor de wei: https://eth-converter.com/
    function mint(address para, uint256 cantidad) public onlyOwner {
        _mint(para, cantidad); // Esto llama a una función interna del ERC20.
    }
}
