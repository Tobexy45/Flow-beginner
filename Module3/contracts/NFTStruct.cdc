// Define the contract for NFTStruct
pub contract NFTStruct {

    // Define the structure for an NFT
    pub struct NFT {
        pub let phone: UInt64
        pub let name: String
        pub let owner: Address

        // Constructor for creating an NFT
        init(phone: UInt64, name: String, owner: Address) {
            self.phone = phone
            self.name = name
            self.owner = owner
        }
    }

    // Store NFTs using their phone as keys in a dictionary
    pub var nfts: {UInt64: NFT}

    // Initialize the contract with an empty NFTs dictionary
    init() {
        self.nfts = {}
    }

    // Add an NFT to the dictionary using its phone as the key
    pub fun createNFT(phone: UInt64, name: String, owner: Address) {
        let nft = NFT(phone: phone, name: name, owner: owner)
        self.nfts[phone] = nft
    }

    // Retrieve an NFT by its phone from the dictionary
    pub fun getNFT(phone: UInt64): NFT? {
        return self.nfts[phone]
    }
}
