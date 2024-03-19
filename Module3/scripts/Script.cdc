// Import NFTStruct Contract
import NFTStruct from 0x05

pub fun main(phone: UInt64): NFTStruct.NFT? { 
  return NFTStruct.getNFT(phone: phone)!
}
