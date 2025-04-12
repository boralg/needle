struct VertexOutput {
    @builtin(position) position: vec4<f32>,
    @location(0) color: vec4<f32>,
};

@vertex
fn vs_main(@builtin(vertex_index) in_vertex_index: u32) -> VertexOutput {
    var positions = array<vec2<f32>, 3>(
        vec2<f32>(0.0, 0.5),
        vec2<f32>(-0.5, -0.5),
        vec2<f32>(0.5, -0.5)
    );
    var colors = array<vec4<f32>, 3>(
        vec4<f32>(1.0, 0.0, 0.0, 1.0),
        vec4<f32>(0.0, 1.0, 0.0, 1.0),
        vec4<f32>(0.0, 0.0, 1.0, 1.0)
    );

    var output: VertexOutput;
    output.position = vec4<f32>(positions[in_vertex_index], 0.0, 1.0);
    output.color = colors[in_vertex_index];
    return output;
}

@fragment
fn fs_main(@location(0) in_color: vec4<f32>) -> @location(0) vec4<f32> {
    return in_color;
}
