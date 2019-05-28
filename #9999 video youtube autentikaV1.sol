pragma solidity^0.4.25;

contract AutentikaSmartContract {
    
struct ArchiviaPerSempre {
    string MessaggioDallaBlockChain_;
}

address TitolareContratto;

constructor() public{
    TitolareContratto = msg.sender;
}


modifier sviluppatoreCapo(){
    if (msg.sender == TitolareContratto){
        _;
    }
}

ArchiviaPerSempre[] public leggiBlockChain;

function InserisciDati (string MessaggioDallaBlockChain_) public sviluppatoreCapo {
    leggiBlockChain.push(ArchiviaPerSempre(MessaggioDallaBlockChain_));
    }
}
