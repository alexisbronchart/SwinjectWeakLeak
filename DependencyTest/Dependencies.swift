//
//  Dependencies.swift
//  vexclient
//
//  Created by Alexis Bronchart on 24/01/2017.
//  Copyright © 2017 Vente-Exclusive.com. All rights reserved.
//

import Swinject

let assembler = Assembler([UIAssembly()])
let DI = assembler.resolver

class UIAssembly: Assembly {
    func assemble(container: Container) {
        
        container.register(DevTestProtocol.self) { _ in
            return DevTest()
        }
        .inObjectScope(.weak)
    }
}
