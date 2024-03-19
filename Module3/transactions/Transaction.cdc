// Import NFTStruct Contract
import NFTStruct from 0x05

// Transaction to add an NFT
transaction(phone: UInt64, name: String, owner: Address) {
    
    prepare(acct: AuthAccount) {}

    execute {
      NFTStruct.createNFT(phone: phone, name: name, owner: owner)
      log("NFT created Successfully")
    }
}
