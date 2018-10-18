# DelaunayTriangulation
Delaunay triangulation implementation written in Swift

## Example

```swift
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
```
