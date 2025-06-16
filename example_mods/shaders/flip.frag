#pragma header

void main()
{
        vec2 uv = vec2(1.0 - openfl_TextureCoordv.x, openfl_TextureCoordv.y);
        gl_FragColor = texture2D(bitmap, uv);
}