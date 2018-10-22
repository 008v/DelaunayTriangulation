//
//  ViewController.swift
//  DelaunayTriangulation
//
//  Created by WEI QIN on 2018/10/11.
//  Copyright © 2018 WEI QIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /* Make points. */
        let points = generateVertices(maxX: UInt32(view.bounds.size.width), maxY: UInt32(view.bounds.size.height), count: 1000)

        /* Make triangles. */
        let triangles = Delaunay().triangulate(points)
        
        /* Render to the screen. */
        for triangle in triangles {
            let shape = CAShapeLayer()
            shape.path = triangle.toPath()
            shape.fillColor = UIColor.clear.cgColor
            shape.strokeColor = UIColor.blue.cgColor
            shape.lineJoin = CAShapeLayerLineJoin.round
            shape.lineCap = CAShapeLayerLineCap.round
            shape.lineWidth = 0.5
            view.layer.addSublayer(shape)
        }
    }
    
    func generateVertices(maxX: UInt32, maxY: UInt32, count: UInt) -> [Vertex] {
        var vertices = [Vertex]()
        for _ in 0..<count {
            vertices.append(Vertex.random(maxX: Double(maxX), maxY: Double(maxY)))
        }
        return vertices
    }
}

