//
//  Triangle.swift
//  DelaunayTriangulation
//
//  Created by WEI QIN on 2018/10/11.
//  Copyright © 2018 WEI QIN. All rights reserved.
//

import UIKit

public struct Triangle {
    public let vertex0: Vertex
    public let vertex1: Vertex
    public let vertex2: Vertex
    
    public init(vertex0: Vertex, vertex1: Vertex, vertex2: Vertex) {
        self.vertex0 = vertex0
        self.vertex1 = vertex1
        self.vertex2 = vertex2
    }
}

extension Triangle {
    public func toPath() -> CGPath {
        let path = CGMutablePath()
        let point0 = vertex0.cgPoint()
        let point1 = vertex1.cgPoint()
        let point2 = vertex2.cgPoint()
        path.move(to: point0)
        path.addLine(to: point1)
        path.addLine(to: point2)
        path.addLine(to: point0)
        path.closeSubpath()
        return path
    }
}
