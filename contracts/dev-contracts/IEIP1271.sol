// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.7.0;

interface IEIP1271 {
  /**
   * @dev Should return whether the signature provided is valid for the provided data
   * @param _data Arbitrary length data signed on the behalf of address(this)
   * @param _signature Signature byte array associated with _data
   *
   * MUST return the bytes4 magic value 0x20c13b0b when function passes.
   * MUST NOT modify state (using STATICCALL for solc < 0.5, view modifier for solc > 0.5)
   * MUST allow external calls
   */
  function isValidSignature(
    bytes calldata _data,
    bytes calldata _signature)
    external
    view
    returns (bytes4);
}
